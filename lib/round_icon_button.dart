import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData childIconData;
  final Function onPressedFunction;

  RoundIconButton(this.childIconData, this.onPressedFunction);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      //for same size as FAB button
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      child: Icon(childIconData),
      onPressed: onPressedFunction,
    );
  }
}
