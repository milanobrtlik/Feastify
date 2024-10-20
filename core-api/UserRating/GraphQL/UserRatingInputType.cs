namespace SalatyAPI.UserRating.GraphQL;

public record UserRateInput(
    [ID]int CompetitorId,
    [ID]int CriteriaId,
    int Rating
);
