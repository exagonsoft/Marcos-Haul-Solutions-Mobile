import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/pages/home/main_home_body.dart';
import 'package:marcos_haull_solutions/langs/langs.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';
import 'package:marcos_haull_solutions/widgets/custom_icon.dart';
import 'package:marcos_haull_solutions/widgets/custom_text.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: APPDimensions.height50,
            margin: EdgeInsets.only(
                top: APPDimensions.height50, bottom: APPDimensions.height15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIcon(
                  icon: Icons.newspaper_outlined,
                  iconColor: AppColors.primaryColor,
                  iconSize: APPDimensions.height30,
                ),
                CustomText(
                  text: AppLangs.langs['en']['homePageUI']['title'],
                  color: AppColors.blackTextColor,
                  weight: FontWeight.bold,
                  size: APPDimensions.height30,
                )
              ],
            ),
          ),
          const Expanded(
              child: SingleChildScrollView(
                  child: MainHomeBody())),
        ],
      ),
    );
  }
}
