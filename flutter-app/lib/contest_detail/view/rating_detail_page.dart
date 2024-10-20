import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/contest_detail/bloc/rating_detail/rating_detail_bloc.dart';
import 'package:salaty/contest_detail/view/rating_detail_view.dart';

class RatingDetailPage extends StatelessWidget {
  final int competitorId;
  final String detailTitle;

  const RatingDetailPage(this.competitorId, this.detailTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RatingDetailBloc(
        context.read<GraphQLClient>(),
      )..add(RatingDetailOpened(competitorId)),
      child: RatingDetailView(detailTitle),
    );
  }
}
