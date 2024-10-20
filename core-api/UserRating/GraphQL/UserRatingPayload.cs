namespace SalatyAPI.UserRating.GraphQL;

public class MyRatingDetailPayload : Payload
{
    public List<RatingCriteria>? Criteria { get; }
    public double? FinalRating { get; }

    public MyRatingDetailPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public MyRatingDetailPayload(List<RatingCriteria> criteria, double finalRating)
    {
        Criteria = criteria;
        FinalRating = finalRating;
    }

    public static MyRatingDetailPayload NotFound(int id)
    {
        return new MyRatingDetailPayload(new[] { UserError.ErrNotFound($"Soutěžící #{id} nenalezen.") });
    }

    public static MyRatingDetailPayload Ok(List<RatingCriteria> criteria, double finalRating)
    {
        return new MyRatingDetailPayload(criteria, finalRating);
    }
}

public class UserRatingPayload : Payload
{
    public Competitor.Entity.Competitor? Competitor { get; }

    public UserRatingPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public UserRatingPayload(Competitor.Entity.Competitor competitor)
    {
        Competitor = competitor;
    }

    public static UserRatingPayload Ok(Competitor.Entity.Competitor competitor)
    {
        return new UserRatingPayload(competitor);
    }

    public static UserRatingPayload CompetitorNotFound(int id)
    {
        return new UserRatingPayload(new[] { UserError.ErrNotFound($"Competitor #{id} not found.") });
    }

    public static UserRatingPayload CriteriaNotFound(int id)
    {
        return new UserRatingPayload(new[] { UserError.ErrNotFound($"Criteria #{id} not found.") });
    }

    public static UserRatingPayload TooHighRating(int rating)
    {
        return new UserRatingPayload(new[]
            { new UserError("RATING_OVERFLOW", $"Hodnocení {rating} je mimo rozsah 0 až 4") });
    }

    public static UserRatingPayload UnableToRateDueState(Contest.Entity.Contest contest)
    {
        return new UserRatingPayload(new[]
        {
            new UserError("UNABLE_TO_RATE_DUE_STATE",
                $"Košt \"{contest.Name} je ve stavu, kdy není možné přidávat či upravovat svá hodnocení.")
        });
    }
}
