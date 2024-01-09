import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/confirmation/confirmation_viewmodel.dart';
import 'package:auto_buying/screens/welcome/welcome_view.dart';
import 'package:auto_buying/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmationView extends StatelessWidget {
  ConfirmationView({super.key});
  final ConfirmationViewModel viewModel = Get.put(ConfirmationViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/successIcon.png',
                width: 65,
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Text(
                  viewModel.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                viewModel.message,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ThemeHelper.grey3,
                ),
              ),
              confirmationBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget confirmationBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: CustomElevatedButton(
        child: Text(viewModel.btnText),
        onPressed: () {
          Get.off(() => WelcomeView());
        },
      ),
    );
  }
}
