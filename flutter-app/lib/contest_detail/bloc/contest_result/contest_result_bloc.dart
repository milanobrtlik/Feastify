import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/contest_detail/graphql/graphql.dart';

part 'contest_result_event.dart';

part 'contest_result_state.dart';

class ContestResultBloc extends Bloc<ContestResultEvent, ContestResultState> {
  final GraphQLClient _client;

  ContestResultBloc(this._client) : super(ContestResultLoading()) {
    on<ContestResultOpened>(_onContestResultOpened);
  }

  FutureOr<void> _onContestResultOpened(
    ContestResultOpened event,
    Emitter<ContestResultState> emit,
  ) async {
    emit(ContestResultLoading());
    final result = await _client.query$contestResult(
      Options$Query$contestResult(
        variables: Variables$Query$contestResult(
          id: event.id.toString(),
        ),
      ),
    );
    if (result.hasException) return;

    final results = result.parsedData!.contestResult.results!;

    emit(ContestResultLoaded(results));
  }
}
