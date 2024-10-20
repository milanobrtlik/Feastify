using HotChocolate.Execution.Configuration;
using SalatyAPI.Criteria.Dataloader;
using SalatyAPI.Criteria.GraphQL;

namespace SalatyAPI.Criteria;

public static class CriteriaConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<CriteriaType>()
            .AddDataLoader<CriteriaByContestIdDataloader>()
            .AddDataLoader<CriteriaByIdDataloader>()
            .AddTypeExtension<CriteriaQuery>()
            ;
    }
}
