using HotChocolate.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using SalatyAPI.Contest.Entity;

namespace SalatyAPI.UserRating.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class UserRatingMutation
{
    [Authorize]
    public async Task<UserRatingPayload> Rate(
        UserRateInput input,
        AppDbContext db,
        [GlobalState] int currentUserId,
        CancellationToken ct)
    {
        if (input.Rating > 5) return UserRatingPayload.TooHighRating(input.Rating);
        var rating = await db.Ratings
                .Where(r => r.UserId.Equals(currentUserId))
                .Where(r => r.CompetitorId.Equals(input.CompetitorId))
                .Where(r => r.CriteriaId.Equals(input.CriteriaId))
                .FirstOrDefaultAsync(ct)
            ;

        if (rating is null)
        {
            rating = new Entity.UserRating();
            db.Add(rating);
        }

        var user = await db.Users.FindAsync(new object?[] { currentUserId }, ct);
        rating.User = user!;

        var competitor = await db
            .Competitors
            .Include(c => c.Contest)
            .Where(c => c.Id.Equals(input.CompetitorId))
            .FirstOrDefaultAsync(ct);
        if (competitor is null) return UserRatingPayload.CompetitorNotFound(input.CompetitorId);
        if (competitor.Contest.State != ContestState.Ongoing)
            return UserRatingPayload.UnableToRateDueState(competitor.Contest);
        rating.Competitor = competitor;

        var criteria = await db.Criteria.FindAsync(new object?[] { input.CriteriaId }, ct);
        if (criteria is null) return UserRatingPayload.CriteriaNotFound(input.CriteriaId);
        rating.Criteria = criteria;
        rating.Rating = rating.Rating == input.Rating ? input.Rating - 1 : input.Rating;

        await db.SaveChangesAsync(ct);

        return UserRatingPayload.Ok(competitor);
    }
}
