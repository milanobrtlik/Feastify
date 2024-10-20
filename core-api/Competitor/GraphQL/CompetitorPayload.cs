namespace SalatyAPI.Competitor.GraphQL;

public class CompetitorPayload : Payload
{
    public Entity.Competitor? Competitor { get; }

    public CompetitorPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public CompetitorPayload(Entity.Competitor competitor)
    {
        Competitor = competitor;
    }

    public static CompetitorPayload Ok(Entity.Competitor competitor)
    {
        return new CompetitorPayload(competitor);
    }

    public static CompetitorPayload ContestNotFound(int id)
    {
        return new CompetitorPayload(new[] { UserError.ErrNotFound($"Contest #{id} not found") });
    }

    public static CompetitorPayload NotFound(int id)
    {
        return new CompetitorPayload(new[] { UserError.ErrNotFound($"Competitor #{id} not found") });
    }
}
