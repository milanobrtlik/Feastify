using System.ComponentModel.DataAnnotations.Schema;

namespace SalatyAPI.Competitor.Entity;

[Table("competitor")]
public class Competitor
{
    public int Id { get; set; }
    public string Label { get; set; } = default!;
    public string Name { get; set; } = default!;
    [GraphQLIgnore]public int ContestId { get; set; }
    [GraphQLIgnore]public Contest.Entity.Contest Contest { get; set; } = default!;
    [GraphQLIgnore] public ICollection<UserRating.Entity.UserRating> UserRatings { get; set; } = default!;
}
