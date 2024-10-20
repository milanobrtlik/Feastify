using System.Security.Claims;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.UserRating.Dataloader;

public class UserRatingByUserIdDataloader : BatchDataLoader<int, float?>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private readonly IHttpContextAccessor _httpContextAccessor;

    public UserRatingByUserIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IHttpContextAccessor httpContextAccessor,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
        _httpContextAccessor = httpContextAccessor;
    }

    protected override async Task<IReadOnlyDictionary<int, float?>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var currentUserId = _httpContextAccessor.HttpContext!.User.FindFirstValue(ClaimTypes.NameIdentifier);

        var data = db.Ratings
            .Where(r => r.UserId.Equals(int.Parse(currentUserId)))
            .Where(r => keys.Contains(r.CompetitorId))
            .Include(r => r.Criteria)
            .GroupBy(r => r.CompetitorId)
            .Select(g => new { g.Key, Rating = g.Sum(r => (decimal)r.Rating * r.Criteria.Weight / 100) })
            .ToDictionary(arg => arg.Key, a => (float?)a.Rating);

        return data;
    }
}
