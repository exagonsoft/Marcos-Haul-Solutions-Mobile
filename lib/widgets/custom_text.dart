import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight weight;
  TextOverflow overFlow;
  int textMaxLines;
  CustomText(
      {super.key,
      this.color=const Color(0x00000000),
      required this.text,
      this.overFlow = TextOverflow.ellipsis,
      this.textMaxLines = 1,
      this.size = 0,
      this.weight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: textMaxLines,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size==0 ? APPDimensions.height20 : size,
          fontWeight: weight),
    );
  }
}
