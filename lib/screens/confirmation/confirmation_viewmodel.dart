import 'package:get/get.dart';

class ConfirmationViewModel extends GetxController {
  String message = '';
  String title = '';
  String btnText = '';

  @override
  void onInit() {
    message = Get.arguments['message'];
    title = Get.arguments['title'];
    btnText = Get.arguments['btnText'];
    super.onInit();
  }
}
