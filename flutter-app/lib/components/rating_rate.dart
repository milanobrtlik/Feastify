import 'package:flutter/material.dart';

class RatingRate extends StatelessWidget {
  final int value;
  final ValueChanged<int>? onChange;

  const RatingRate({
    Key? key,
    required this.value,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) => index < value
            ? IconButton(
                onPressed: onChange == null ? null : () => onChange!(index),
                icon: Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.primary,
                  size: 32,
                ),
              )
            : IconButton(
                onPressed: onChange == null ? null : () => onChange!(index),
                icon: Icon(
                  Icons.star_border_outlined,
                  color: Theme.of(context).colorScheme.outline,
                  size: 32,
                ),
              ),
      ),
    );
  }
}
