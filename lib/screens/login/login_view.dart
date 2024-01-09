import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/login/login_viewmodel.dart';
import 'package:auto_buying/widgets/custom_textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel viewModel = Get.put(LoginViewModel());
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              topContainer(),
              Container(
                color: ThemeHelper.grey1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 30, 16, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      //todo
                      emailTextField(),
                      SizedBox(height: 14),
                      passwordTextField(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget topContainer() {
    return Container(
      width: double.infinity,
      height: Get.height * 0.22,
      padding: EdgeInsets.only(left: 16, bottom: 15, top: 20),
      color: ThemeHelper.grey1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Spacer(),
          Text(
            "SignUp",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
          ),
          Text(
            "Enter Your Details Below and Signup for Free",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: ThemeHelper.grey2,
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField() {
    return CustomTextField1(
      title: "Your Email",
    );
  }

  Widget passwordTextField() {
    return Obx(
      () => CustomTextField1(
        title: "Password",
        obscureText: viewModel.obscureText.value,
        suffixIcon: IconButton(
          onPressed: () {
            viewModel.obscureText.value = !viewModel.obscureText.value;
          },
          icon: Icon(
            viewModel.obscureText.value
                ? CupertinoIcons.eye_slash
                : CupertinoIcons.eye,
            size: 20,
          ),
          color: ThemeHelper.navyBlue,
        ),
      ),
    );
  }
}
