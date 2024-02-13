import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';

// ignore: must_be_immutable
class CustomButtonIconText extends StatelessWidget {
  final IconData icon;
  double iconSize;
  double buttomSize;
  String buttomText;
  Color iconColor;
  Color buttonColor;
  double buttomBorderRadius;
  CustomButtonIconText(
      {super.key,
      required this.icon,
      this.iconSize = 0,
      this.buttomSize = 0,
      this.buttomText = "",
      this.iconColor = const Color.fromARGB(255, 121, 111, 111),
      this.buttonColor = const Color.fromARGB(153, 190, 185, 185),
      this.buttomBorderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: buttomSize == 0 ? APPDimensions.height100 : buttomSize,
      height: buttomSize == 0 ? APPDimensions.height50 : buttomSize / 2,
      padding: EdgeInsets.only(
          left: APPDimensions.width20,
          right: APPDimensions.width20,
          top: APPDimensions.height5,
          bottom: APPDimensions.height5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttomBorderRadius),
          color: buttonColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize / 2,
            color: iconColor,
          ),
          SizedBox(width: APPDimensions.height10,),
          Text(buttomText,
              style: TextStyle(
                  color: AppColors.blackTextColor,
                  fontSize: iconSize / 3,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
