import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:salaty/main.dart';

import 'auth/auth.dart';

class MyErrorsParser extends ResponseParser {
  MyErrorsParser();

  @override
  GraphQLError parseError(Map<String, dynamic> error) {
    var noAuth = error.containsKey('extensions');
    noAuth = noAuth && error['extensions'].containsKey('code');
    noAuth = noAuth && error['extensions']['code'] == 'AUTH_NOT_AUTHENTICATED';
    if (noAuth) {
      Navigator.of(ContextProvider.context!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const AuthPage()),
          (route) => false,
      );
    }

    return super.parseError(error);
  }
}
