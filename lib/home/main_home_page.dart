import 'package:flutter/material.dart';
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
      body: Container(
        child: Container(
          margin: const EdgeInsets.only(top: 100, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomIcon(icon: Icons.newspaper_outlined ,iconColor:AppColors.primaryColor, iconSize: 30,),
              
              CustomText(text: "Recent News", color: AppColors.blackTextColor, weight: FontWeight.bold, size: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
