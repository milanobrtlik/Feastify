part of 'rating_detail_bloc.dart';

@immutable
abstract class RatingDetailEvent {}

class RatingDetailOpened extends RatingDetailEvent {
  final int id;

  RatingDetailOpened(this.id);
}
