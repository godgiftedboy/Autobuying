import 'package:auto_buying/helper/global_variable.dart';
import 'package:auto_buying/helper/theme_helper.dart';
import 'package:auto_buying/screens/buttom_navigation/buttom_navigation_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationView extends StatelessWidget {
  final ButtomNavigationViewModel viewModel = ButtomNavigationViewModel();
  BottomNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: Obx(
          () => viewModel.selectedView(
              GlobalVariable.selectedIndex.value, context),
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Obx(
      () => BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(-1, 0),
                  spreadRadius: 0.5,
                  color: ThemeHelper.primaryColor.withOpacity(0.09),
                )
              ]),
        ),
      ),
    );
  }
}
