import 'package:flutter/material.dart';
import 'constant.dart';

class CustomIconContent extends StatelessWidget {
  final String content;
  final IconData iconData;
  CustomIconContent(this.content, this.iconData);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          content,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
