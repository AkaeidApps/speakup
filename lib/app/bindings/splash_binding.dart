import 'package:get/get.dart';

import '../features/splash/splash_controller.dart';

class SplashBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}