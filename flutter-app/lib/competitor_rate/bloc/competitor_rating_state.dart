part of 'competitor_rating_bloc.dart';

@immutable
abstract class CompetitorRatingState {}

class CompetitorRatingLoading extends CompetitorRatingState {}

class CompetitorRatingLoaded extends CompetitorRatingState {
  final Fragment$CompetitorDetail data;
  final List<Query$contestDetail$contestDetail$contest$criteria?> criteria;

  CompetitorRatingLoaded(this.data, this.criteria);
}
