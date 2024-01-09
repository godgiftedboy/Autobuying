import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

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
                        'Enter the verification code \n we just sent to your email',
                        style: TextStyle(
                          fontSize: 13.5,
                          color: ThemeHelper.grey3,
                        ),
                      ),
                      pinCodeTextField(context),
                      CustomElevatedButton(
                        child: Text(
                          "Verify",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(height: 30),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Didn\'t received any code?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Resend',
                              style: TextStyle(
                                color: ThemeHelper.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
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
            "OTP Verification",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
          ),
        ],
      ),
    );
  }

  Widget pinCodeTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        enableActiveFill: true,
        animationType: AnimationType.fade,
        animationDuration: Duration(milliseconds: 300),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 60,
          fieldWidth: Get.width * 0.19,
          inactiveColor: ThemeHelper.grey5,
          activeColor: ThemeHelper.primaryColor,
          activeFillColor: Colors.white,
          inactiveFillColor: ThemeHelper.grey4,
          selectedFillColor: ThemeHelper.grey4,
        ),
      ),
    );
  }
}
