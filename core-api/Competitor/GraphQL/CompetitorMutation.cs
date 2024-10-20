using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.Competitor.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class CompetitorMutation
{
    [Authorize]
    public async Task<CompetitorPayload> CompetitorCreate(
        CompetitorCreateInputType input,
        AppDbContext db,
        CancellationToken ct)
    {
        var contest = await db.Contests
            .Where(c => c.Id.Equals(input.ContestId))
            .FirstOrDefaultAsync(ct);
        if (contest is null) return CompetitorPayload.ContestNotFound(input.ContestId);

        var competitor = new Entity.Competitor
        {
            Name = input.Name,
            Contest = contest,
        };

        db.Add(competitor);
        await db.SaveChangesAsync(ct);

        return CompetitorPayload.Ok(competitor);
    }

    [Authorize]
    public async Task<CompetitorPayload> CompetitorUpdate(
        [ID] int id,
        CompetitorUpdateInputType input,
        AppDbContext db,
        CancellationToken ct)
    {
        var competitor = await db.Competitors
            .Where(c => c.Id.Equals(id))
            .FirstOrDefaultAsync(ct);
        if (competitor is null) return CompetitorPayload.NotFound(id);

        if (input.Name.HasValue) competitor.Name = input.Name.Value!;
        if (input.ContestId.HasValue)
        {
            var contest = await db.Contests
                .Where(c => c.Id.Equals(input.ContestId.Value!))
                .FirstOrDefaultAsync(ct);
            if (contest is null) return CompetitorPayload.ContestNotFound(input.ContestId.Value!.Value);
            competitor.Contest = contest;
        }

        await db.SaveChangesAsync(ct);

        return CompetitorPayload.Ok(competitor);
    }

    [Authorize]
    public async Task<ConfirmationPayload> CompetitorDelete(
        [ID] int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var count = await db.Competitors.Where(c => c.Id.Equals(id)).ExecuteDeleteAsync(ct);

        return count == 0
            ? new ConfirmationPayload(new[] { UserError.ErrNotFound($"Competitor #{id} not found") })
            : new ConfirmationPayload(new List<UserError>());
    }
}
