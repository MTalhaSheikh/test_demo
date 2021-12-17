import 'package:flutter/material.dart';
import 'package:test_demo/data/constants.dart';

class BottomInfoRowWidget extends StatelessWidget {
  final String txt1;
  final String txt2;

  const BottomInfoRowWidget(this.txt1, this.txt2, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.location_on,
              size: 25,
              color: Constants.primaryColor,
            ),
          ),
          Text.rich(
            TextSpan(
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
              text: txt1, // default text style
              children: [
                TextSpan(
                  text: txt2,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
