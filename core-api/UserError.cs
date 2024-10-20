namespace SalatyAPI;

public class UserError
{
    public const string NotFound = "NOT_FOUND";

    public UserError(string code, string? message)
    {
        Code = code;
        Message = message;
    }

    public static UserError ErrNotFound(string message)
    {
        return new UserError(NotFound, message);
    }
    
    public string Code { get; }
    public string? Message { get; }
}
