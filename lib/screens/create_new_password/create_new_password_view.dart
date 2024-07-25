import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/confirmation/confirmation_view.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:auto_buying/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

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
                        'Your new password must be unique from those previously used ones',
                        style: TextStyle(
                          fontSize: 13.5,
                          color: ThemeHelper.grey3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: CustomTextField1(
                          title: "Password",
                          obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 20),
                        child: CustomTextField1(
                          title: "Confirm Password",
                          obscureText: true,
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
                          Get.to(() => ConfirmationView(), arguments: {
                            'message':
                                'Your password has been successfully changed',
                            'title': 'Password Changed!',
                            'btnText': 'Continue'
                          });
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
            "Create New Password",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
