using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using SalatyAPI.Contest.Entity;

namespace SalatyAPI.Contest.GraphQL;

[ExtendObjectType(typeof(Query))]
public class ContestQuery
{
    [Authorize]
    public async Task<ContestResultPayload> ContestResult(
        [ID] int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var contestResults = await db
            .Ratings
            .Where(r => r.Competitor.ContestId.Equals(id))
            .Where(r => r.Competitor.Contest.State.Equals(ContestState.Evaluated))
            .GroupBy(r => new { r.UserId, r.CompetitorId })
            .Select(s => new
            {
                competitorId = s.Key.CompetitorId,
                score = s.Sum(ur => ur.Rating * ur.Criteria.Weight)
            })
            .GroupBy(g => new { g.competitorId })
            .Select(s => new
            {
                s.Key.competitorId,
                score = s.Average(a => a.score) * .2,
            })
            .Join(
                db.Competitors,
                arg => arg.competitorId,
                competitor => competitor.Id,
                (a, b) => new ContestResult
                {
                    Id = b.Id,
                    Label = b.Label,
                    Name = b.Name,
                    Score = a.score,
                }
            )
            .OrderByDescending(o => o.Score)
            .ToListAsync(ct);

        return ContestResultPayload.Ok(contestResults);
    }

    [Authorize]
    public async Task<UsersAverageRatingPayload> UsersAverageRating(
        [ID] int contestId,
        AppDbContext db,
        CancellationToken ct)
    {
        var result = await db
            .Users
            .Select(user => new UserAverageRatingResult
            {
                Name = user.Name,
                Score = user
                    .Ratings
                    .Where(ur => ur.Competitor.ContestId.Equals(contestId))
                    .Where(ur => ur.Competitor.Contest.State.Equals(ContestState.Evaluated))
                    .Average(a => a.Rating * a.Criteria.Weight)
            })
            .OrderByDescending(arg => arg.Score)
            .ToListAsync(ct);

        return UsersAverageRatingPayload.Ok(result);
    }

    [Authorize]
    public IQueryable<Entity.Contest> ContestList(
        AppDbContext db,
        CancellationToken ct
    ) => db.Contests.OrderBy(c => c.Id);

    [Authorize]
    public async Task<ContestPayload> ContestDetail(
        [ID] int id,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var contest = await db.Contests
            .Where(c => c.Id.Equals(id))
            .FirstOrDefaultAsync(ct);
        return contest is null ? ContestPayload.NotFound(id) : ContestPayload.Ok(contest);
    }
}
