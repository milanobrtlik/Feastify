namespace SalatyAPI.Contest.GraphQL;

public class ContestResult
{
    public int Id { get; set; }
    public string Label { get; set; }
    public string Name { get; set; }
    public double Score { get; set; }
}

public class ContestResultsType : ObjectType<ContestResult>
{
}

public class UserAverageRatingResult
{
    public string Name { get; set; }
    public double Score { get; set; }
}

public class UserAverageRatingResultType : ObjectType<UserAverageRatingResult>
{
}
