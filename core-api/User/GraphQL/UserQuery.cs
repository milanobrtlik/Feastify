using Microsoft.EntityFrameworkCore;

namespace SalatyAPI.User.GraphQL;

[ExtendObjectType(typeof(Query))]
public class UserQuery
{
    public async Task<Entity.User> Me(
        AppDbContext db,
        [GlobalState] int currentUserId,
        CancellationToken ct
    ) => await db.Users.FirstAsync(u => u.Id.Equals(currentUserId), ct);
}
