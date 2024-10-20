using SalatyAPI.Criteria.Dataloader;
using SalatyAPI.Criteria.GraphQL;

namespace SalatyAPI.UserRating.GraphQL;

public class UserRatingType : ObjectType<Entity.UserRating>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.UserRating> descriptor)
    {
        descriptor.Field("criteria")
            .Type<CriteriaType>()
            .ResolveWith<UserRatingResolvers>(r => r.GetCriteria(default!, default!, default!));
    }
}

internal class UserRatingResolvers
{
    public async Task<Criteria.Entity.Criteria> GetCriteria(
        [Parent] Entity.UserRating userRating,
        CriteriaByIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(userRating.CriteriaId, ct);
}
