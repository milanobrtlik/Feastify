import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/bloc/bloc.dart';
import 'package:salaty/contest_detail/view/competitor_list.dart';
import 'package:salaty/contest_detail/view/contest_dummy_state.dart';
import 'package:salaty/contest_detail/view/contest_results.dart';
import 'package:salaty/schema.graphql.dart';
import '../graphql/contest.graphql.dart';

class ContestDetailView extends StatelessWidget {
  const ContestDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContestDetailBloc, ContestDetailState>(
      builder: (context, state) {
        return {
          ContestDetailLoading: (_) => const ScaffoldWithLoading(),
          ContestDetailLoaded: (state) => _Loaded((state as ContestDetailLoaded).data),
        }[state.runtimeType]!(state);
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  final Query$contestDetail$contestDetail$contest detail;

  const _Loaded(this.detail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail.name),
        centerTitle: true,
      ),
      body: {
        Enum$ContestState.ONGOING: () => CompetitorList(detail),
        Enum$ContestState.EVALUATED: () => ContestResults(detail),
        Enum$ContestState.EVALUATING: () => ContestDummyState(detail),
        Enum$ContestState.NOT_STARTED: () => ContestDummyState(detail),
        Enum$ContestState.PREPARING: () => ContestDummyState(detail),
      }[detail.state]!(),
    );
  }
}
