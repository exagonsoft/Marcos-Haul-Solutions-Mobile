import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/home/main_home_body.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
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
            height: 50,
            margin: const EdgeInsets.only(top: 50, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIcon(
                  icon: Icons.newspaper_outlined,
                  iconColor: AppColors.primaryColor,
                  iconSize: 30,
                ),
                CustomText(
                  text: "Most Relevant",
                  color: AppColors.blackTextColor,
                  weight: FontWeight.bold,
                  size: 30,
                )
              ],
            ),
          ),
          MainHomeBody(),
        ],
      ),
    );
  }
}
