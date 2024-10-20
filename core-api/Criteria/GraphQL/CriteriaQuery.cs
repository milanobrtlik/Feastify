using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Criteria.GraphQL;

[ExtendObjectType(typeof(Query))]
public class CriteriaQuery
{
    public async Task<CriteriaPayload> CriteriaDetail(
        [ID] int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var criteria = await db.Criteria
            .Where(cc => cc.Id.Equals(id))
            .FirstOrDefaultAsync(ct);

        return criteria is null ? CriteriaPayload.NotFound(id) : CriteriaPayload.Ok(criteria);
    }
}
