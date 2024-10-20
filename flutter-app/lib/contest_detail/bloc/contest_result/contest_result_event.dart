part of 'contest_result_bloc.dart';

@immutable
abstract class ContestResultEvent {}

class ContestResultOpened extends ContestResultEvent {
  final int id;

  ContestResultOpened(this.id);
}
