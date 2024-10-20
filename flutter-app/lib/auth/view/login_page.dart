import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:salaty/auth/bloc/auth_bloc.dart';
import 'package:salaty/auth/view/login_view.dart';
import 'package:salaty/config.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final link = HttpLink(Config.apiUrl);
    final client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
      ),
    );
    return BlocProvider(
      create: (context) => AuthBloc(client),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.success) {
            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
          }
        },
        child: const LoginView(),
      ),
    );
  }
}
