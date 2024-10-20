import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/view/contest_detail_page.dart';
import 'package:salaty/schema.graphql.dart';

import '../bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/launcher_icon.png', height: 48),
            const SizedBox(width: 4),
            const Text('Koštoappka'),
          ],
        ),
        actions: const [BtnLogout()],
      ),
      body: RefreshIndicator(
        color: Colors.green,
        backgroundColor: Colors.white,
        onRefresh: () {
          final bloc = context.read<HomeBloc>()..add(HomeRefreshed());
          return bloc.stream.firstWhere((e) => e is! HomeRefreshing);
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (prev, curr) => curr is HomeLoaded,
          builder: (context, state) {
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is HomeLoaded) {
              return ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, i) => ListTile(
                  title: Text(state.data[i].name),
                  subtitle: Text(state.data[i].state.text()),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => ContestDetailPage(state.data[i].id),
                    ),
                  ),
                ),
                itemCount: state.data.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
              );
            }
            return const Center(
              child: Text('unknown state'),
            );
          },
        ),
      ),
    );
  }
}

extension ContestStateText on Enum$ContestState {
  String text() {
    switch(this) {
      case Enum$ContestState.EVALUATING:
        return 'Vyhodnocování';
      case Enum$ContestState.EVALUATED:
        return 'Vyhodnoceno';
      case Enum$ContestState.NOT_STARTED:
        return 'Čeká se na zahájení';
      case Enum$ContestState.ONGOING:
        return 'Probíhající';
      case Enum$ContestState.PREPARING:
        return 'Připravuje se';
      case Enum$ContestState.$unknown:
        return 'Neznámý';
    }
  }
}
