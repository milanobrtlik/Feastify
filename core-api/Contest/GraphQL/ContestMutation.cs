using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Contest.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class ContestMutation
{
    [Authorize]
    public async Task<ContestPayload> ContestCreate(
        ContestCreateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var contest = new Entity.Contest
        {
            Name = input.Name,
        };

        db.Add(contest);
        await db.SaveChangesAsync(ct);
        return ContestPayload.Ok(contest);
    }

    [Authorize]
    public async Task<ContestPayload> ContestUpdate(
        int id,
        ContestUpdateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var contest = await db.Contests
            .Where(c => c.Id.Equals(id))
            .FirstOrDefaultAsync(ct);
        if (contest is null) return ContestPayload.NotFound(id);

        if (input.Name.HasValue) contest.Name = input.Name.Value!;

        await db.SaveChangesAsync(ct);

        return ContestPayload.Ok(contest);
    }

    [Authorize]
    public async Task<ConfirmationPayload> ContestDelete(
        int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var count = await db.Contests
            .Where(c => c.Id.Equals(id))
            .ExecuteDeleteAsync(ct);

        return count == 0
            ? new ConfirmationPayload(new[] { UserError.ErrNotFound($"Contest #{id} not found") })
            : new ConfirmationPayload(new List<UserError>());
    }
}
