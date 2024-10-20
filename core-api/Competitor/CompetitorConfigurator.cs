using HotChocolate.Execution.Configuration;
using SalatyAPI.Competitor.Dataloader;
using SalatyAPI.Competitor.GraphQL;

namespace SalatyAPI.Competitor;

public static class CompetitorConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<CompetitorType>()
            .AddTypeExtension<CompetitorQuery>()
            .AddTypeExtension<CompetitorMutation>()
            .AddDataLoader<CompetitorByContestIdDataloader>()
            ;
    }
}
