import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Buying',
      theme: ThemeData(
        primarySwatch: ThemeHelper.palette1,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: WelcomeView(),
    );
  }
}
