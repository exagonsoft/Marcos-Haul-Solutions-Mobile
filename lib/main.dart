import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marcos_haull_solutions/home/main_home_page.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hauler Wizards',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const MainHomePage(),
    );
  }
}
