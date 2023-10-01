import 'package:flutter/material.dart';

class RatingStars1 extends StatelessWidget {
  final int rating;
  final double starSize;

  RatingStars1({required this.rating, this.starSize = 15.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
            (index) {
          return Icon(
            index < rating ? Icons.star : Icons.star_border,
            size: starSize,
            color: Colors.yellow,
          );
        },
      ),
    );
  }
}
