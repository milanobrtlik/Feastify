import 'package:flutter/material.dart';
import 'package:salaty/contest_detail/graphql/graphql.dart';
import 'package:salaty/contest_detail/view/rating_detail_page.dart';

class OtherPlace extends StatelessWidget {
  final String place;
  final Query$contestResult$contestResult$results result;

  const OtherPlace(this.place, this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => RatingDetailPage(result.id, 'Soutěžící ${result.label}'),
        ),
      ),
      leading: Container(
        width: 47,
        height: 47,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Center(
          child: Text(
            place,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
      title: Text('Soutěžící ${result.label}'),
      trailing: Text(result.score.toStringAsFixed(2)),
    );
  }
}
