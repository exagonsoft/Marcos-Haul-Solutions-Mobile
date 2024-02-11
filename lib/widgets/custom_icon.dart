import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  double iconSize;
  Color iconColor;
  CustomIcon({super.key, required this.icon, this.iconSize=20, this.iconColor= const Color.fromARGB(255, 121, 111, 111)});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: iconSize,
      color: iconColor,
    );
  }
}