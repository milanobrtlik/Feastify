part of 'contest_detail_bloc.dart';

@immutable
abstract class ContestDetailState {}

class ContestDetailLoading extends ContestDetailState {}

class ContestDetailRefreshing extends ContestDetailState {}

class ContestDetailLoaded extends ContestDetailState {
  final Query$contestDetail$contestDetail$contest data;

  ContestDetailLoaded(this.data);
}
