import 'package:flutter/material.dart';

class RatingDisplay extends StatelessWidget {
  final double? rating;
  final double? iconSize;
  final int starsCount;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;

  const RatingDisplay({
    required this.rating,
    this.iconSize,
    this.starsCount = 5,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (rating == null) {
      return Text(
        'Nehodnoceno',
        style: TextStyle(fontSize: iconSize == null ? null : iconSize! - 4),
      );
    }
    final r = rating!;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: List.generate(
        starsCount,
        (index) => index <= r - 1
            ? Icon(Icons.star, size: iconSize)
            : r - r.toInt() > 0.5 && r.toInt() == index
                ? Icon(Icons.star_half, size: iconSize)
                : Icon(Icons.star_border, size: iconSize),
      ),
    );
  }
}
