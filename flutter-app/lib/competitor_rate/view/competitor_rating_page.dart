import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/competitor_rate/bloc/competitor_rating_bloc.dart';
import 'package:salaty/competitor_rate/view/competitor_rating_view.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';

class CompetitorRatingPage extends StatelessWidget {
  final int _id;
  final List<Query$contestDetail$contestDetail$contest$criteria?> criteria;
  final Function? onChanged;

  const CompetitorRatingPage(
    this._id,
    this.criteria, {
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompetitorRatingBloc(
        context.read<GraphQLClient>(),
      )..add(CompetitorRatingOpened(_id, criteria)),
      child: CompetitorRatingView(
        onChanged: onChanged,
      ),
    );
  }
}
