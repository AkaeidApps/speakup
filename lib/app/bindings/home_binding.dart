import 'package:get/get.dart';

import '../features/home/home_controller.dart';

class HomeBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}