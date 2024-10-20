import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/bloc/rating_detail/rating_detail_bloc.dart';
import 'package:salaty/criteria_detail/view/criteria_detail_page.dart';

class RatingDetailView extends StatelessWidget {
  final String competitorLabel;

  const RatingDetailView(this.competitorLabel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingDetailBloc, RatingDetailState>(
      builder: (context, state) {
        return {
          RatingDetailLoading: (_) => const ScaffoldWithLoading(),
          RatingDetailLoaded: (state) => _Loaded(state, competitorLabel),
        }[state.runtimeType]!(state);
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  final RatingDetailLoaded state;
  final String competitorLabel;

  const _Loaded(this.state, this.competitorLabel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(competitorLabel),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Moje hodnocení',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  '${state.finalRating.toStringAsFixed(0)}%',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            const SizedBox(height: 4),
            RatingDisplay(
              rating: state.finalRating / 10,
              starsCount: 10,
              iconSize: 33,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) => Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => CriteriaDetailPage(
                      int.parse(state.criteria[index].criteriaId),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 28, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.criteria[index].name,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 4),
                        RatingDisplay(
                          rating: state.criteria[index].rating == null
                              ? null
                              : state.criteria[index].rating!.toDouble(),
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: state.criteria.length,
            ),
          ],
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
