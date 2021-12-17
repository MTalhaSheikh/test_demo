import 'package:flutter/material.dart';
import 'package:test_demo/data/constants.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({Key? key}) : super(key: key);

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20.0),
      child: SizedBox(
        width: size.width / 1.7,
        child: ElevatedButton(
          style: Constants.primaryButtonStyle,
          child: const Center(
            child: Text(
              "Post Job & Invite to Bid",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
