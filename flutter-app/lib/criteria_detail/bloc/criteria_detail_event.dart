part of 'criteria_detail_bloc.dart';

@immutable
abstract class CriteriaDetailEvent {}

class CriteriaDetailOpened extends CriteriaDetailEvent {
  final int id;

  CriteriaDetailOpened(this.id);
}
