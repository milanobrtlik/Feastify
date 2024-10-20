import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/bloc/bloc.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';
import 'package:salaty/contest_detail/view/components/components.dart';

class ContestResults extends StatelessWidget {
  final Query$contestDetail$contestDetail$contest detail;

  const ContestResults(this.detail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContestResultBloc(
        context.read<GraphQLClient>(),
      )..add(ContestResultOpened(detail.id)),
      child: BlocBuilder<ContestResultBloc, ContestResultState>(
        builder: (context, state) {
          return {
            ContestResultLoading: (_) => const CenteredLoading(),
            ContestResultLoaded: (state) => _Loaded(state),
          }[state.runtimeType]!(state);
        },
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  final ContestResultLoaded state;

  const _Loaded(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                if (state.results.isNotEmpty)
                  PodiumPlace(
                    result: state.results[0],
                    height: 100,
                    icon: Image.asset('assets/gold.png', height: 100),
                    textStyle: Theme.of(context).textTheme.headline5!,
                  ),
                if (state.results.length > 1)
                  PodiumPlace(
                    result: state.results[1],
                    height: 80,
                    icon: Image.asset('assets/silver.png', height: 66),
                    textStyle: Theme.of(context).textTheme.headline6!,
                  ),
                if (state.results.length > 2)
                  PodiumPlace(
                    result: state.results[2],
                    height: 60,
                    icon: Image.asset('assets/bronze.png', height: 44),
                    textStyle: Theme.of(context).textTheme.titleMedium!,
                  ),
              ],
            ),
          ),
          Column(
            children: [
              for (var i = 3; i < state.results.length; i++) ...[
                if (i == 3) // 4th place
                  PotatoPlace(state.results[i])
                else
                  OtherPlace((i + 1).toString(), state.results[i]),
                const Divider(height: 0),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
