import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight weight;
  TextOverflow overFlow;
  CustomText(
      {super.key,
      this.color=const Color(0x00000000),
      required this.text,
      this.overFlow = TextOverflow.ellipsis,
      this.size = 20,
      this.weight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          fontWeight: weight),
    );
  }
}
