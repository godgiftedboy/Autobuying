import 'package:auto_buying/screens/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel viewModel = Get.put(LoginViewModel());
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
