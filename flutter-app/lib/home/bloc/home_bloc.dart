import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/home/graphql/home.graphql.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GraphQLClient _client;

  HomeBloc(this._client) : super(HomeLoading()) {
    on<HomeEntered>(_onHomeEntered);
    on<HomeRefreshed>(_onHomeRefresh);
  }

  FutureOr<void> _onHomeEntered(
    HomeEntered event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    final result = await _client.query$loadHome();
    if (result.hasException) return;
    final data = result.parsedData!.contestList;
    emit(HomeLoaded(data));
  }

  FutureOr<void> _onHomeRefresh(
    HomeRefreshed event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeRefreshing());
    final result = await _client.query$loadHome();
    if (result.hasException) return;
    final data = result.parsedData!.contestList;
    emit(HomeLoaded(data));
  }
}
