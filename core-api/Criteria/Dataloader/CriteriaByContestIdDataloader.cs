using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Criteria.Dataloader;

public class CriteriaByContestIdDataloader : GroupedDataLoader<int, Entity.Criteria>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public CriteriaByContestIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, Entity.Criteria>> LoadGroupedBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
        return db.Criteria
            .Where(cc => keys.Contains(cc.ContestId))
            .OrderBy(o => o.Id)
            .ToLookup(x => x.ContestId);
    }
}
