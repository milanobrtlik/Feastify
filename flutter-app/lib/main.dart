import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:salaty/auth/auth.dart';
import 'package:salaty/config.dart';
import 'package:salaty/errors.dart';

import 'home/view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('jwt');

  final link = HttpLink(Config.apiUrl, parser: MyErrorsParser());
  final authLink = AuthLink(
    getToken: () {
      final token = Hive.box('jwt').get('token');
      if (token == null) {
        Navigator.of(ContextProvider.context!).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const AuthPage()),
          (route) => false,
        );
      }
      return 'Bearer $token';
    },
  );
  final client = GraphQLClient(
    link: authLink.concat(link),
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly),
    ),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => client),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 0xF4, 0xEA, 0xD5),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    ),
  );
}

class ContextProvider {
  static BuildContext? context;
}
