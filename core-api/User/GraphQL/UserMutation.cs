using Microsoft.EntityFrameworkCore;
using SalatyAPI.User.Auth;
using Sodium;

namespace SalatyAPI.User.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class UserMutation
{
    public async Task<AuthPayload> Login(
        LoginInput input,
        AppDbContext db,
        [Service] JwtFactory jwtFactory,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Name.Equals(input.Username))
            .FirstOrDefaultAsync(ct);
        if (user is null)
        {
            user = new Entity.User
            {
                Name = input.Username,
                Password = PasswordHash.ArgonHashString(input.Password)
            };
            db.Add(user);
            await db.SaveChangesAsync(ct);
        }

        if (PasswordHash.ArgonHashStringVerify(user.Password, input.Password) == false)
        {
            return AuthPayload.InvalidPassword();
        }

        if (PasswordHash.ArgonPasswordNeedsRehash(user.Password) == true)
        {
            user.Password = PasswordHash.ArgonHashString(input.Password);
            await db.SaveChangesAsync(ct);
        }

        return new AuthPayload(jwtFactory.Create(user.Id));
    }
}
