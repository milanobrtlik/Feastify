part of 'rating_detail_bloc.dart';

@immutable
abstract class RatingDetailState {}

class RatingDetailLoading extends RatingDetailState {}

class RatingDetailLoaded extends RatingDetailState {
  final List<Query$ratingDetail$ratingDetailByCompetitorId$criteria> criteria;
  final double finalRating;

  RatingDetailLoaded(this.criteria, this.finalRating);
}
