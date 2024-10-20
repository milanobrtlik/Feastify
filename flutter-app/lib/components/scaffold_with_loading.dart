import 'package:flutter/material.dart';

class ScaffoldWithLoading extends StatelessWidget {
  const ScaffoldWithLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
