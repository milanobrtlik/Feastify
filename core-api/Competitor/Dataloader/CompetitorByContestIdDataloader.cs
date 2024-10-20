using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Competitor.Dataloader;

public class CompetitorByContestIdDataloader : GroupedDataLoader<int, Entity.Competitor>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public CompetitorByContestIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, Entity.Competitor>> LoadGroupedBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
        return db.Competitors
            .Where(c => keys.Contains(c.ContestId))
            .OrderBy(o => o.Label)
            .ToLookup(x => x.ContestId);
    }
}
