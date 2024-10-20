import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salaty/contest_detail/bloc/bloc.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';
import 'package:salaty/schema.graphql.dart';

class ContestDummyState extends StatelessWidget {
  final Query$contestDetail$contestDetail$contest detail;

  const ContestDummyState(this.detail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            {
              Enum$ContestState.PREPARING: () =>
                  'Probíhá příprava koštu. Čekejte prosím.',
              Enum$ContestState.NOT_STARTED: () =>
                  'Košt ještě nezačal. Čekejte prosím.',
              Enum$ContestState.EVALUATING: () =>
                  'Probíhá vyhodnocování. Čekejte prosím.',
            }[detail.state]!(),
          ),
        ),
        const SizedBox(height: 16),
        IconButton(
          onPressed: () => context
              .read<ContestDetailBloc>()
              .add(ContestDetailEntered(detail.id)),
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
