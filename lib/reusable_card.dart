import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgcolor;
  final Widget cardChild;
  final Function onTapFunction;

  ReusableCard({this.bgcolor, this.cardChild, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapFunction,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
