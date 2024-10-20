import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/criteria_detail/bloc/criteria_detail_bloc.dart';

class CriteriaDetailView extends StatelessWidget {
  const CriteriaDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CriteriaDetailBloc, CriteriaDetailState>(
      builder: (context, state) {
        return {
          CriteriaDetailLoading: (_) => const LoadingDialog(),
          CriteriaDetailLoaded: (state) => _Loaded(state),
        }[state.runtimeType]!(state);
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  final CriteriaDetailLoaded state;

  const _Loaded(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 24, 8, 24),
            child: Text(
              state.data.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: Markdown(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              data: state.data.description ?? 'Popis bohužel chybí 😢',
              shrinkWrap: true,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Váha kritéria je ${state.data.weight}%. Každá hvězda tedy znamená přibližně ${state.data.weight / 5} bodů ze sta.',
            ),
          ),
          OutlinedButton(
              onPressed: () => Navigator.of(context).maybePop(),
              child: const Text('Rozumím')),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
