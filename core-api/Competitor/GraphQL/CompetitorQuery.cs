using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Competitor.GraphQL;

[ExtendObjectType(typeof(Query))]
public class CompetitorQuery
{
    [Authorize]
    public IQueryable<Entity.Competitor> CompetitorList(
        AppDbContext db
    ) => db.Competitors;

    [Authorize]
    public async Task<CompetitorPayload> CompetitorDetail(
        [ID] int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var competitor = await db.Competitors
            .Where(c => c.Id.Equals(id))
            .OrderBy(c => c.Label)
            .FirstOrDefaultAsync(ct);
        return competitor is null ? CompetitorPayload.NotFound(id) : CompetitorPayload.Ok(competitor);
    }
}
