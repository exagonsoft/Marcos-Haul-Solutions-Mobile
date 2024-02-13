import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';

// ignore: must_be_immutable
class CustomButtonIcon extends StatelessWidget {
  final IconData icon;
  double iconSize;
  Color iconColor;
  Color buttonColor;
  CustomButtonIcon(
      {super.key,
      required this.icon,
      this.iconSize = 0,
      this.iconColor = const Color.fromARGB(255, 121, 111, 111),
      this.buttonColor = const Color.fromARGB(153, 190, 185, 185)});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: iconSize == 0 ? APPDimensions.height20 : iconSize,
      height: iconSize == 0 ? APPDimensions.height20 : iconSize,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(iconSize / 2), color: buttonColor),
      child: Icon(
        icon,
        size: iconSize / 3,
        color: iconColor,
      ),
    );
  }
}
