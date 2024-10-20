using HotChocolate.Execution.Configuration;
using SalatyAPI.User.Auth;

namespace SalatyAPI;

public class Query
{
}

public class Mutation
{
}

public static class GraphQLConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddAuthorization()
            .AddHttpRequestInterceptor<CurrentUserIdRequestInterceptor>()
            .AddFiltering()
            .AddSorting()
            .RegisterDbContext<AppDbContext>(DbContextKind.Pooled)
            .AddQueryType<Query>()
            .AddMutationType<Mutation>()
            ;
    }
}

public abstract class Payload
{
    protected Payload(IReadOnlyList<UserError>? errors = null)
    {
        Errors = errors ?? new List<UserError>();
    }

    public IReadOnlyList<UserError> Errors { get; }
}

public class ConfirmationPayload : Payload
{
    public ConfirmationPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }
}
