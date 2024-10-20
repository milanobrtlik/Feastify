import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salaty/criteria_detail/bloc/criteria_detail_bloc.dart';
import 'package:salaty/criteria_detail/view/criteria_detail_view.dart';

class CriteriaDetailPage extends StatelessWidget {
  final int id;
  const CriteriaDetailPage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CriteriaDetailBloc()..add(CriteriaDetailOpened(id)),
      child: const CriteriaDetailView(),
    );
  }
}
