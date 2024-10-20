part of 'competitor_rating_bloc.dart';

@immutable
abstract class CompetitorRatingEvent {}

class CompetitorRatingOpened extends CompetitorRatingEvent{
  final int id;
  final List<Query$contestDetail$contestDetail$contest$criteria?> criteria;

  CompetitorRatingOpened(this.id, this.criteria);
}

class CompetitorRate extends CompetitorRatingEvent {
  final int competitorId;
  final int criteriaId;
  final int rating;

  CompetitorRate(this.competitorId, this.criteriaId, this.rating);
}
