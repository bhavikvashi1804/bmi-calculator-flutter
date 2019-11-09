import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgcolor;
  final Widget cardChild;

  ReusableCard({@required this.bgcolor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
