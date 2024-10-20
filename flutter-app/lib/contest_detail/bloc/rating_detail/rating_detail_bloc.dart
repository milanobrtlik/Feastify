import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';

part 'rating_detail_event.dart';

part 'rating_detail_state.dart';

class RatingDetailBloc extends Bloc<RatingDetailEvent, RatingDetailState> {
  final GraphQLClient _client;

  RatingDetailBloc(this._client) : super(RatingDetailLoading()) {
    on<RatingDetailOpened>(_onRatingDetailOpened);
  }

  FutureOr<void> _onRatingDetailOpened(
    RatingDetailOpened event,
    Emitter<RatingDetailState> emit,
  ) async {
    emit(RatingDetailLoading());
    final results = await _client.query$ratingDetail(
      Options$Query$ratingDetail(
        variables: Variables$Query$ratingDetail(
          id: event.id.toString(),
        ),
      ),
    );
    if(results.hasException) return;

    final criteria = results.parsedData!.ratingDetailByCompetitorId.criteria!;
    final finalRating = results.parsedData!.ratingDetailByCompetitorId.finalRating!;

    emit(RatingDetailLoaded(criteria, finalRating));
  }
}
