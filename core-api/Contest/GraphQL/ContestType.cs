using SalatyAPI.Competitor.Dataloader;
using SalatyAPI.Competitor.GraphQL;
using SalatyAPI.Criteria.Dataloader;
using SalatyAPI.Criteria.GraphQL;

namespace SalatyAPI.Contest.GraphQL;

public class ContestType : ObjectType<Entity.Contest>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Contest> descriptor)
    {
        descriptor.Field("criteria")
            .Type<ListType<CriteriaType>>()
            .ResolveWith<ContestResolvers>(r => r.GetCriteria(default!, default!, default!));

        descriptor.Field("competitors")
            .Type<ListType<CompetitorType>>()
            .ResolveWith<ContestResolvers>(r => r.GetCompetitors(default!, default!, default!));
    }
}

internal class ContestResolvers
{
    public async Task<IEnumerable<Criteria.Entity.Criteria>> GetCriteria(
        [Parent] Entity.Contest contest,
        CriteriaByContestIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(contest.Id, ct);

    public async Task<IEnumerable<Competitor.Entity.Competitor>> GetCompetitors(
        [Parent] Entity.Contest contest,
        CompetitorByContestIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(contest.Id, ct);
}
