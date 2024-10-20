namespace SalatyAPI.Contest.GraphQL;

public record ContestCreateInput(
    string Name
);

public record ContestUpdateInput(
    Optional<string> Name
);
