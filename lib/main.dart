import 'package:demo_app/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'localization/en_us/app_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //title: 'Flutter Demo',
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       visualDensity: VisualDensity.standard,
    ),
    home: SplashScreen(),
    );
  }
}

