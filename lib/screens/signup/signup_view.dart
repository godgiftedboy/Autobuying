import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/login/login_view.dart';
import 'package:auto_buying/screens/signup/signup_viewmodel.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:auto_buying/widgets/custom_checkbox_listtile.dart';
import 'package:auto_buying/widgets/custom_textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  final SignupViewModel viewModel = Get.put(SignupViewModel());

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
                      createAccountBtn(),
                      termsAndConditionCheckBox(),
                      SizedBox(height: 25),
                      alreadyHaveAccount(),
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

  //functions
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

  Widget createAccountBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 15),
      child: CustomElevatedButton(
        child: Text(
          'Create Account',
        ),
        onPressed: () {},
        radius: 15,
      ),
    );
  }

  Widget termsAndConditionCheckBox() {
    return Obx(() => CustomCheckBoxListTile(
          checkBoxText:
              "By creating account, You agree \n with our terms and conditions",
          value: viewModel.termsAndConditions.value,
          onChanged: (value) {
            viewModel.termsAndConditions.value = value ?? false;
          },
        ));
  }

  Widget alreadyHaveAccount() {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 13.5),
        children: [
          TextSpan(
            text: "Already have an account?",
            style: TextStyle(
              color: ThemeHelper.grey3,
            ),
          ),
          TextSpan(
            text: "Login",
            style: TextStyle(
              color: ThemeHelper.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.off(() =>
                    LoginView()); //You can navigate from one page to another, but when you click on the back icon, it will back you 2 steps.
              },
          ),
        ],
      ),
    );
  }
}
