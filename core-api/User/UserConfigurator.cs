using HotChocolate.Execution.Configuration;
using SalatyAPI.User.GraphQL;

namespace SalatyAPI.User;

public static class UserConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<UserType>()
            .AddTypeExtension<UserMutation>()
            ;
    }
}
