import 'package:flutter/material.dart';
import 'package:salaty/competitor_rate/view/competitor_rating_page.dart';
import 'package:salaty/components/components.dart';
import 'package:salaty/contest_detail/graphql/contest.graphql.dart';

class CompetitorList extends StatelessWidget {
  final Query$contestDetail$contestDetail$contest detail;

  const CompetitorList(this.detail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 164,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) =>
            _Card(detail.competitors![index]!, detail.criteria!),
        itemCount: detail.competitors!.length,
      ),
    );
  }
}

class _Card extends StatefulWidget {
  final Query$contestDetail$contestDetail$contest$competitors competitor;
  final List<Query$contestDetail$contestDetail$contest$criteria?> criteria;

  const _Card(this.competitor, this.criteria, {Key? key}) : super(key: key);

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  double? rating;

  @override
  void initState() {
    rating = widget.competitor.rating;
    super.initState();
  }

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
        onTap: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CompetitorRatingPage(
                widget.competitor.id,
                widget.criteria,
                onChanged: (double? val) => rating = val,
              ),
            ),
          );
          setState(() {});
        },
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.competitor.label,
              style: Theme.of(context).textTheme.headline4,
            ),
            RatingDisplay(
              rating: rating,
              iconSize: 17,
            ),
          ],
        ),
      ),
    );
  }
}
