using System.ComponentModel.DataAnnotations.Schema;

namespace SalatyAPI.UserRating.Entity;

[Table("user_rating")]
public class UserRating
{
    public int Id { get; set; }
    [GraphQLIgnore] public int UserId { get; set; }
    [GraphQLIgnore]public User.Entity.User User { get; set; } = default!;
    [GraphQLIgnore] public int CompetitorId { get; set; }
    [GraphQLIgnore]public Competitor.Entity.Competitor Competitor { get; set; } = default!;
    [GraphQLIgnore]public int CriteriaId { get; set; }
    [GraphQLIgnore]public Criteria.Entity.Criteria Criteria { get; set; } = default!;
    public int Rating { get; set; }
}
