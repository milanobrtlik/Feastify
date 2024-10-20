using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.UserRating.GraphQL;

[ExtendObjectType(typeof(Query))]
public class UserRatingQuery
{
    [Authorize]
    public async Task<MyRatingDetailPayload> GetRatingDetailByCompetitorId(
        [ID] int id,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct)
    {
        var criteriaList = await db.Criteria
            .Where(c => c.ContestId.Equals(db.Competitors
                    .Where(c1 => c1.Id.Equals(id))
                    .Select(c2 => c2.ContestId)
                    .First()))
            .GroupJoin(
                db.Ratings,
                criterion => criterion.Id,
                rating => rating.CriteriaId,
                (criterion, ratingGroup) => new { criterion, ratingGroup })
            .SelectMany(
                t => t.ratingGroup
                    .Where(rating => rating.UserId.Equals(currentUserId))
                    .Where(rating => rating.CompetitorId.Equals(id))
                    .DefaultIfEmpty(),
                (t, rating) => new RatingCriteria
                {
                    CriteriaId = t.criterion.Id,
                    Name = t.criterion.Name,
                    Description = t.criterion.Description,
                    Weight = t.criterion.Weight,
                    Rating = rating == null ? null : rating.Rating,
                }).ToListAsync(ct);

        var finalRating = criteriaList.Sum(rc => rc.Rating * rc.Weight) * .2;

        return MyRatingDetailPayload.Ok(criteriaList, finalRating ?? 0);
    }
}
