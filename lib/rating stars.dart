import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  final double starSize;

  RatingStars({required this.rating, this.starSize = 30.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
            (index) {
          return Icon(
            index < rating ? Icons.star : Icons.star_border,
            size: starSize,
            color: Colors.purple,
          );
        },
      ),
    );
  }
}
