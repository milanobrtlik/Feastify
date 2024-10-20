part of 'contest_result_bloc.dart';

@immutable
abstract class ContestResultState {}

class ContestResultLoading extends ContestResultState {}

class ContestResultLoaded extends ContestResultState {
  final List<Query$contestResult$contestResult$results> results;

  ContestResultLoaded(this.results);
}
