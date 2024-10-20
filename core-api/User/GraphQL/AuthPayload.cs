namespace SalatyAPI.User.GraphQL;

public class AuthPayload : Payload
{
    public const string Unauthenticated = "UNAUTHENTICATED";
    public const string DuplicatedUsername = "DUPLICATED_USERNAME";

    public AuthPayload(IReadOnlyList<UserError>? errors = null) : base(errors)
    {
    }

    public AuthPayload(string token)
    {
        Token = token;
    }

    public static AuthPayload UserNotFound()
    {
        return new AuthPayload(new[] { new UserError(UserError.NotFound, "User not found.") });
    }

    public static AuthPayload InvalidPassword()
    {
        return new AuthPayload(new[] { new UserError(Unauthenticated, "Špatné heslo") });
    }

    public static AuthPayload Authenticated(string token)
    {
        return new AuthPayload(token);
    }

    public static AuthPayload UserAlreadyExists()
    {
        return new AuthPayload(new[] { new UserError(DuplicatedUsername, "User already exists") });
    }

    public string? Token { get; }
}
