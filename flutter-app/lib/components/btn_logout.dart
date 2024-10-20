import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../auth/auth.dart';

class BtnLogout extends StatelessWidget {
  const BtnLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Hive.box('jwt').clear();
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const AuthPage()),
          (route) => false,
        );
      },
      icon: const Icon(Icons.logout),
    );
  }
}
