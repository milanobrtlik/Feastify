namespace SalatyAPI.Criteria.GraphQL;

public class CriteriaPayload : Payload
{
    public Entity.Criteria? Criteria { get; }

    public CriteriaPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public CriteriaPayload(Entity.Criteria criteria)
    {
        Criteria = criteria;
    }

    public static CriteriaPayload Ok(Entity.Criteria criteria)
    {
        return new CriteriaPayload(criteria);
    }

    public static CriteriaPayload ContestNotFound(int contestId)
    {
        return new CriteriaPayload(new[]
            { UserError.ErrNotFound($"Contest #{contestId} not found.") });
    }

    public static CriteriaPayload NotFound(int id)
    {
        return new CriteriaPayload(new[]
            { UserError.ErrNotFound($"Criteria #{id} not found.") });
    }
}
