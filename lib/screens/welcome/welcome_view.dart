import 'package:auto_buying/screens/login/login_view.dart';
import 'package:auto_buying/screens/signup/signup_view.dart';
import 'package:auto_buying/screens/welcome/welcome_viewmodel.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  WelcomeView({super.key});
  final WelcomeViewModel viewModel = Get.put(WelcomeViewModel());

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
            Spacer(),
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: Get.width * 0.65,
            ),
            Spacer(),
            loginBtn(),
            SizedBox(
              height: 12,
            ),
            signUpBtn(),
            Spacer(),
          ],
        ),
      ),
    ));
  }

  //functions
  Widget loginBtn() {
    return CustomElevatedButton(
      child: Text(
        "Login",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      onPressed: () {
        Get.to(() => LoginView());
      },
      radius: 15,
    );
  }

  Widget signUpBtn() {
    return CustomElevatedButton(
      child: Text(
        "Sign Up",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      foreGroundColor: Colors.grey,
      backGroundColor: Colors.white,
      onPressed: () {
        Get.to(() => SignupView());
      },
      radius: 15,
    );
  }
}
