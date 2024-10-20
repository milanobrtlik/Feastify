namespace SalatyAPI.Criteria.GraphQL;

public record CriteriaCreateInput(
    int ContestId,
    string Name,
    string? Description,
    int Weight
);

public record CriteriaUpdateInput(
    Optional<int?> ContestId,
    Optional<string?> Name,
    Optional<string?> Description,
    Optional<int?> Weight
);
