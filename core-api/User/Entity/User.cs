using System.ComponentModel.DataAnnotations.Schema;

namespace SalatyAPI.User.Entity;

[Table("user")]
public class User
{
    public int Id { get; set; }
    public string Name { get; set; }
    [GraphQLIgnore] public string Password { get; set; }
    [GraphQLIgnore] public ICollection<UserRating.Entity.UserRating> Ratings { get; set; } = default!;
}
