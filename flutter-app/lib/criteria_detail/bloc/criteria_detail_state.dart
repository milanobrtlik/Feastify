part of 'criteria_detail_bloc.dart';

@immutable
abstract class CriteriaDetailState {}

class CriteriaDetailLoading extends CriteriaDetailState {}

class CriteriaDetailLoaded extends CriteriaDetailState {
  final Fragment$ContestCriteriaDetail data;

  CriteriaDetailLoaded(this.data);
}
