import 'package:flutter/material.dart';
import 'package:salaty/contest_detail/graphql/graphql.dart';
import 'package:salaty/contest_detail/view/rating_detail_page.dart';

class PotatoPlace extends StatelessWidget {
  final Query$contestResult$contestResult$results result;
  const PotatoPlace(this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => RatingDetailPage(result.id, 'Soutěžící ${result.label}'),
        ),
      ),
      leading: Image.asset('assets/potato.png', width: 47),
      title: Text('Soutěžící ${result.label}'),
      trailing: Text(result.score.toStringAsFixed(2)),
    );
  }
}
