import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/competitor_rate/graphql/competitor_rating.graphql.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';
import 'package:salaty/schema.graphql.dart';

part 'competitor_rating_event.dart';

part 'competitor_rating_state.dart';

class CompetitorRatingBloc
    extends Bloc<CompetitorRatingEvent, CompetitorRatingState> {
  final GraphQLClient _client;

  CompetitorRatingBloc(this._client) : super(CompetitorRatingLoading()) {
    on<CompetitorRatingOpened>(_onCompetitorRatingOpened);
    on<CompetitorRate>(_onCompetitorRate);
  }

  FutureOr<void> _onCompetitorRate(
    CompetitorRate event,
    Emitter<CompetitorRatingState> emit,
  ) async {
    var criteria;
    if (state is CompetitorRatingLoaded) {
      criteria = (state as CompetitorRatingLoaded).criteria;
    }
    final response = await _client.mutate$rate(
      Options$Mutation$rate(
        variables: Variables$Mutation$rate(
          input: Input$UserRateInput(
            competitorId: event.competitorId,
            criteriaId: event.criteriaId,
            rating: event.rating,
          ),
        ),
      ),
    );

    final data = response.parsedData!.rate.competitor!;

    emit(CompetitorRatingLoaded(data, criteria));
  }

  FutureOr<void> _onCompetitorRatingOpened(
    CompetitorRatingOpened event,
    Emitter<CompetitorRatingState> emit,
  ) async {
    emit(CompetitorRatingLoading());
    final result = await _client.query$competitorDetail(
      Options$Query$competitorDetail(
        variables: Variables$Query$competitorDetail(
          id: event.id.toString(),
        ),
      ),
    );

    final data = result.parsedData!.competitorDetail.competitor!;

    emit(CompetitorRatingLoaded(data, event.criteria));
  }
}
