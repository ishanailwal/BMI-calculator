import 'package:flutter/material.dart';
import '../constants.dart';

class CalculateButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;

  CalculateButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kCalculateButtonHeight,
        margin: EdgeInsets.only(top: 10.0),
        color: kCalculateButtonColor,
      ),
    );
  }
}
