using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Criteria.Dataloader;

public class CriteriaByIdDataloader : BatchDataLoader<int, Entity.Criteria>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public CriteriaByIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Criteria>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return db.Criteria
            .Where(cc => keys.Contains(cc.Id))
            .ToDictionary(x => x.Id);
    }
}
