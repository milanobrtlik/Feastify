import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salaty/competitor_rate/bloc/competitor_rating_bloc.dart';
import 'package:salaty/competitor_rate/graphql/competitor_rating.graphql.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';
import 'package:salaty/criteria_detail/view/criteria_detail_page.dart';

class CompetitorRatingView extends StatelessWidget {
  final Function? onChanged;

  const CompetitorRatingView({
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitorRatingBloc, CompetitorRatingState>(
      builder: (context, state) {
        return {
          CompetitorRatingLoading: (_) => const ScaffoldWithLoading(),
          CompetitorRatingLoaded: (state) => _Loaded(
                (state as CompetitorRatingLoaded).data,
                (state).criteria,
                onChanged: onChanged,
              ),
        }[state.runtimeType]!(state);
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  final Fragment$CompetitorDetail data;
  final List<Query$contestDetail$contestDetail$contest$criteria?> criteria;
  final Function? onChanged;

  const _Loaded(
    this.data,
    this.criteria, {
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (onChanged != null) onChanged!(data.rating);
    return Scaffold(
      appBar: AppBar(
        title: Text('Soutěžící ${data.label}'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemBuilder: (context, i) {
            final ratings =
                data.ratings!.where((e) => e!.criteria!.id == criteria[i]!.id);
            return _CriteriaRow(
              data.id,
              criteria[i]!,
              ratings.isEmpty ? 0 : ratings.first!.rating,
            );
          },
          itemCount: criteria.length,
        ),
      ),
    );
  }
}

class _CriteriaRow extends StatelessWidget {
  final int competitorId;
  final int rating;
  final Query$contestDetail$contestDetail$contest$criteria criteria;

  const _CriteriaRow(this.competitorId, this.criteria, this.rating, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(criteria.name,
                      style: Theme.of(context).textTheme.headline6),
                  const SizedBox(width: 8),
                  Text(
                    '${criteria.weight}%',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => CriteriaDetailPage(criteria.id),
                ),
                icon: const Icon(Icons.info_outlined),
              ),
            ],
          ),
          // const SizedBox(height: 8),
          RatingRate(
            value: rating,
            onChange: (value) => context
                .read<CompetitorRatingBloc>()
                .add(CompetitorRate(competitorId, criteria.id, value + 1)),
          ),
        ],
      ),
    );
  }
}
