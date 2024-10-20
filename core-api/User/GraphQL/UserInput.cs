namespace SalatyAPI.User.GraphQL;

public record LoginInput(
    string Username,
    string Password
);

public record CreateAccountInput(
    string Username,
    string Password
);
