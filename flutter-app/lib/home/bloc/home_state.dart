part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeRefreshing extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Query$loadHome$contestList> data;

  HomeLoaded(this.data);
}
