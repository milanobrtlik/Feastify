part of 'contest_detail_bloc.dart';

@immutable
abstract class ContestDetailEvent {}

class ContestDetailEntered extends ContestDetailEvent {
  final int contestId;

  ContestDetailEntered(this.contestId);
}

class ContestDetailRefreshed extends ContestDetailEntered {
  ContestDetailRefreshed(super.contestId);
}
