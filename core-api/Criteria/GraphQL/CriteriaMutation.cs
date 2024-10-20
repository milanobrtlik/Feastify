using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Criteria.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class CriteriaMutation
{
    [Authorize]
    public async Task<CriteriaPayload> CriteriaCreate(
        CriteriaCreateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var contest = await db.Contests
            .Where(c => c.Id.Equals(input.ContestId))
            .FirstOrDefaultAsync(ct);
        if (contest is null) return CriteriaPayload.ContestNotFound(input.ContestId);

        var criteria = new Entity.Criteria
        {
            Name = input.Name,
            Description = input.Description,
            Contest = contest,
            Weight = input.Weight,
        };

        db.Add(criteria);
        await db.SaveChangesAsync(ct);

        return CriteriaPayload.Ok(criteria);
    }

    [Authorize]
    public async Task<CriteriaPayload> CriteriaUpdate(
        int criteriaId,
        CriteriaUpdateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var criteria = await db.Criteria
            .Where(cc => cc.Id.Equals(criteriaId))
            .FirstOrDefaultAsync(ct);
        if (criteria is null) return CriteriaPayload.NotFound(criteriaId);

        if (input.Name.HasValue) criteria.Name = input.Name.Value!;
        if (input.Description.HasValue) criteria.Description = input.Description.Value!;
        if (input.Weight.HasValue) criteria.Weight = input.Weight.Value!.Value;
        if (input.ContestId.HasValue)
        {
            var contest = await db.Contests
                .Where(c => c.Id.Equals(input.ContestId.Value!))
                .FirstOrDefaultAsync(ct);
            if (contest is null) return CriteriaPayload.ContestNotFound(input.ContestId.Value!.Value);
            criteria.Contest = contest;
        }

        await db.SaveChangesAsync(ct);

        return CriteriaPayload.Ok(criteria);
    }

    [Authorize]
    public async Task<ConfirmationPayload> CriteriaDelete(
        int criteriaId,
        AppDbContext db,
        CancellationToken ct)
    {
        var count = await db.Criteria
            .Where(cc => cc.Id.Equals(criteriaId))
            .ExecuteDeleteAsync(ct);

        return count == 1
            ? new ConfirmationPayload(new List<UserError>())
            : new ConfirmationPayload(new[]
                { UserError.ErrNotFound($"Criteria #{criteriaId} not found.") });
    }
}
