using System.ComponentModel.DataAnnotations.Schema;

namespace SalatyAPI.Contest.Entity;

public enum ContestState
{
    Preparing,
    NotStarted,
    Ongoing,
    Evaluating,
    Evaluated,
}

[Table("contest")]
public class Contest
{
    public int Id { get; set; }
    public string Name { get; set; } = default!;
    public ContestState State { get; set; }
    public ICollection<Competitor.Entity.Competitor> Competitors { get; set; } = default!;
}
