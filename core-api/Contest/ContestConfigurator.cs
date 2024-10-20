using HotChocolate.Execution.Configuration;
using SalatyAPI.Contest.GraphQL;

namespace SalatyAPI.Contest;

public static class ContestConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<ContestType>()
            .AddTypeExtension<ContestQuery>()
            .AddTypeExtension<ContestMutation>()
            .AddType<ContestResultsType>()
            .AddType<UserAverageRatingResultType>()
            ;
    }
}
