import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final dynamic rating;
  Rating({this.rating});
  @override
  Widget build(BuildContext context) {
    int rat = rating.toInt();
    String ratingString = "";
    for (int i = 0; i < rat; i++) {
      ratingString = ratingString + " ⭐ ";
    }
    return Align(
      alignment: Alignment.topLeft,
      child: Text(ratingString),
    );
  }
}
