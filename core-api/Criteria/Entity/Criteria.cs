using System.ComponentModel.DataAnnotations.Schema;

namespace SalatyAPI.Criteria.Entity;

[Table("criteria")]
public class Criteria
{
    public int Id { get; set; }
    public string Name { get; set; } = default!;
    public string? Description { get; set; }
    [GraphQLIgnore]public int ContestId { get; set; }
    [GraphQLIgnore]public Contest.Entity.Contest Contest { get; set; } = default!;
    public int Weight { get; set; }
}
