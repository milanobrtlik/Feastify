using System.Security.Claims;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.UserRating.Dataloader;

public class UserRatingsByUserIdDataloader : GroupedDataLoader<int, Entity.UserRating>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private readonly IHttpContextAccessor _httpContextAccessor;

    public UserRatingsByUserIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IHttpContextAccessor httpContextAccessor,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
        _httpContextAccessor = httpContextAccessor;
    }

    protected override async Task<ILookup<int, Entity.UserRating>> LoadGroupedBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var currentUserId = _httpContextAccessor.HttpContext!.User.FindFirstValue(ClaimTypes.NameIdentifier);

        var data = db.Ratings
            .Where(r => keys.Contains(r.CompetitorId))
            .Where(r => r.UserId.Equals(int.Parse(currentUserId)))
            .ToLookup(x => x.CompetitorId);

        return data;
    }
}
