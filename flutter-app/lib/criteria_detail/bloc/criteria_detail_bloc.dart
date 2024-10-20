import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:salaty/config.dart';
import 'package:salaty/criteria_detail/graphql/criteria_detail.graphql.dart';

part 'criteria_detail_event.dart';

part 'criteria_detail_state.dart';

class CriteriaDetailBloc
    extends Bloc<CriteriaDetailEvent, CriteriaDetailState> {
  late GraphQLClient _client;

  CriteriaDetailBloc() : super(CriteriaDetailLoading()) {
    _client = GraphQLClient(
      link: HttpLink(Config.apiUrl),
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
      )
    );
    on<CriteriaDetailOpened>(_onCriteriaDetailOpened);
  }

  FutureOr<void> _onCriteriaDetailOpened(
    CriteriaDetailOpened event,
    Emitter<CriteriaDetailState> emit,
  ) async {
    emit(CriteriaDetailLoading());
    final result = await _client.query$contestCriteriaDetail(
      Options$Query$contestCriteriaDetail(
        variables: Variables$Query$contestCriteriaDetail(
          id: event.id.toString(),
        ),
      ),
    );
    if(result.hasException) return;
    final data = result.parsedData!.criteriaDetail.criteria;

    emit(CriteriaDetailLoaded(data!));
  }
}
