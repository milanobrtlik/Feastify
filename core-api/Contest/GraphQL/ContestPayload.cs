namespace SalatyAPI.Contest.GraphQL;

public class UsersAverageRatingPayload : Payload
{
    public List<UserAverageRatingResult>? Results { get; }

    public UsersAverageRatingPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public UsersAverageRatingPayload(List<UserAverageRatingResult> results)
    {
        Results = results;
    }

    public static UsersAverageRatingPayload Ok(List<UserAverageRatingResult> results)
    {
        return new UsersAverageRatingPayload(results);
    }
}

public class ContestResultPayload : Payload
{
    public List<ContestResult>? Results { get; }

    public ContestResultPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public ContestResultPayload(List<ContestResult> results)
    {
        Results = results;
    }

    public static ContestResultPayload NotFound(int id)
    {
        return new ContestResultPayload(new[] { UserError.ErrNotFound($"Contest #{id} not found.") });
    }

    public static ContestResultPayload Ok(List<ContestResult> results)
    {
        return new ContestResultPayload(results);
    }
}

public class ContestPayload : Payload
{
    public Entity.Contest? Contest { get; }

    public ContestPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public ContestPayload(Entity.Contest contest)
    {
        Contest = contest;
    }

    public static ContestPayload Ok(Entity.Contest contest)
    {
        return new ContestPayload(contest);
    }

    public static ContestPayload NotFound(int id)
    {
        return new ContestPayload(new[] { UserError.ErrNotFound($"Contest #{id} not found.") });
    }
}
