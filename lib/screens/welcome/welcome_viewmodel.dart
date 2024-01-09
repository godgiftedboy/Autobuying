import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class WelcomeViewModel extends GetxController {
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    super.onReady();
  }
}
