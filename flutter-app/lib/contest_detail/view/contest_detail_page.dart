import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/contest_detail/bloc/bloc.dart';
import 'package:salaty/contest_detail/view/contest_detail_view.dart';

class ContestDetailPage extends StatelessWidget {
  final int _contestId;

  const ContestDetailPage(this._contestId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContestDetailBloc(
        context.read<GraphQLClient>(),
      )..add(ContestDetailEntered(_contestId)),
      child: const ContestDetailView(),
    );
  }
}
