import 'package:auto_buying/screens/confirmation/confirmation_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmationView extends StatelessWidget {
  ConfirmationView({super.key});
  final ConfirmationViewModel viewModel = Get.put(ConfirmationViewModel());

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
