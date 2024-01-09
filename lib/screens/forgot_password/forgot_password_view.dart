import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/otp_verification/otp_verification_view.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:auto_buying/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
                      Text(
                        'Please, Enter your Email address. \n You will receive a link to create a new password via email',
                        style: TextStyle(
                          fontSize: 13.5,
                          color: ThemeHelper.grey3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 25),
                        child: CustomTextField1(
                          title: "Email",
                          suffixIcon: Icon(Icons.close),
                        ),
                      ),
                      CustomElevatedButton(
                        child: Text(
                          "Send",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => OtpVerificationView());
                        },
                      )
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
            "Forgot Password",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
