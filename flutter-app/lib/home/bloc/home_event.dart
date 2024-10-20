part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeEntered extends HomeEvent {}

class HomeRefreshed extends HomeEvent {}
