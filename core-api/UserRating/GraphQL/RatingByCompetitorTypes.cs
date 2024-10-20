namespace SalatyAPI.UserRating.GraphQL;

public class RatingCriteria
{
    [GraphQLType(typeof(NonNullType<IdType>))]
    public int CriteriaId { get; set; }
    public string Name { get; set; }
    public string? Description { get; set; }
    public int Weight { get; set; }
    public int? Rating { get; set; }
}

public class RatingCriteriaType : ObjectType<RatingCriteria>
{
}
