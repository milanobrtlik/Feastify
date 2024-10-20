import 'package:flutter/material.dart';
import 'package:salaty/contest_detail/graphql/graphql.dart';
import 'package:salaty/contest_detail/view/rating_detail_page.dart';

class PodiumPlace extends StatelessWidget {
  final Query$contestResult$contestResult$results result;
  final double height;
  final Image icon;
  final TextStyle textStyle;

  const PodiumPlace({
    required this.result,
    required this.height,
    required this.icon,
    required this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RatingDetailPage(result.id, result.name),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: height,
                width: 100,
                child: Center(child: icon),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      result.name,
                      style: textStyle,
                    ),
                    Text(
                      'Soutěžící ${result.label}',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Text(
                result.score.toStringAsFixed(2),
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
