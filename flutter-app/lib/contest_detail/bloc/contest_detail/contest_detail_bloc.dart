import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';

part 'contest_detail_event.dart';

part 'contest_detail_state.dart';

class ContestDetailBloc extends Bloc<ContestDetailEvent, ContestDetailState> {
  final GraphQLClient _client;

  ContestDetailBloc(this._client) : super(ContestDetailLoading()) {
    on<ContestDetailEntered>(_onContestDetailEntered);
    on<ContestDetailRefreshed>(_onContestDetailEntered);
  }

  FutureOr<void> _onContestDetailEntered(
    ContestDetailEntered event,
    Emitter<ContestDetailState> emit,
  ) async {
    emit(ContestDetailLoading());
    final result = await _client.query$contestDetail(
      Options$Query$contestDetail(
        variables: Variables$Query$contestDetail(
          id: event.contestId.toString(),
        ),
      ),
    );

    final data = result.parsedData!.contestDetail.contest!;

    emit(ContestDetailLoaded(data));
  }
}
