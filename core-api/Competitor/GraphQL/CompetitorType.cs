using SalatyAPI.UserRating.Dataloader;
using SalatyAPI.UserRating.GraphQL;

namespace SalatyAPI.Competitor.GraphQL;

public class CompetitorType : ObjectType<Entity.Competitor>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Competitor> descriptor)
    {
        descriptor.Field("ratings")
            .Type<ListType<UserRatingType>>()
            .ResolveWith<CompetitorResolvers>(r => r.GetMyRatings(default!, default!, default!));
        descriptor.Field("rating")
            .Type<FloatType>()
            .ResolveWith<CompetitorResolvers>(r => r.GetMyRating(default!, default!, default!));
    }
}

internal class CompetitorResolvers
{
    public async Task<IEnumerable<UserRating.Entity.UserRating>> GetMyRatings(
        [Parent] Entity.Competitor competitor,
        UserRatingsByUserIdDataloader dataloader,
        CancellationToken ct
    )
    {
        var data = await dataloader.LoadAsync(competitor.Id, ct);
        return data;
    }

    public async Task<float?> GetMyRating(
        [Parent] Entity.Competitor competitor,
        UserRatingByUserIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(competitor.Id, ct);
}
