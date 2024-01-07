import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundImage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: Get.width * 0.65,
            )
          ],
        ),
      ),
    ));
  }
}
