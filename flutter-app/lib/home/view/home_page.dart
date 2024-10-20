import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:salaty/home/bloc/home_bloc.dart';
import 'package:salaty/home/view/home_view.dart';
import 'package:salaty/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContextProvider.context = context;
    return BlocProvider(
      create: (context) => HomeBloc(
        context.read<GraphQLClient>(),
      )..add(HomeEntered()),
      child: const HomeView(),
    );
  }
}
