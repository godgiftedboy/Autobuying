import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ButtomNavigationViewModel extends GetxController {
  Widget selectedView(int index, BuildContext context) {
    switch (index) {
      case 0:
        return SizedBox();
      case 1:
        return SizedBox();
      case 2:
        return SizedBox();
      case 3:
        return SizedBox();
      default:
        return SizedBox();
    }
  }
}
