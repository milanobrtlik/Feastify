namespace SalatyAPI.Competitor.GraphQL;

public record CompetitorCreateInputType(
    string Name,
    int ContestId
);

public record CompetitorUpdateInputType(
    Optional<string?> Name,
    Optional<int?> ContestId
);
