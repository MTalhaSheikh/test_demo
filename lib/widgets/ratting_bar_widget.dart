import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_demo/data/constants.dart';

class RattingBarWidget extends StatelessWidget {
  const RattingBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 0,
      minRating: 1,
      itemSize: 22,
      unratedColor: Colors.grey.withAlpha(100),
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.only(right: 2.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Constants.primaryColor,
      ),
      onRatingUpdate: (rating) {
      },
    );
  }
}
