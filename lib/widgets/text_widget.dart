import 'package:flutter/material.dart';

import '../utils/color/colors.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color color;
  double fontsize;
  FontWeight fontWeight;
  TextAlign textAlign;
  TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontsize,
      this.textAlign = TextAlign.left,
      this.fontWeight = FontWeight.w500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:
          TextStyle(color: color, fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
