using HotChocolate.Execution.Configuration;
using SalatyAPI.UserRating.Dataloader;
using SalatyAPI.UserRating.GraphQL;

namespace SalatyAPI.UserRating;

public static class UserRatingConfigurator
{
    public static void Configure(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<UserRatingType>()
            .AddType<UserRatingMutation>()
            .AddDataLoader<UserRatingsByUserIdDataloader>()
            .AddTypeExtension<UserRatingQuery>()
            ;
    }
}
