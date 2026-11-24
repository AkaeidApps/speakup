import 'package:get/get.dart';

import '../features/authentication/auth_controller.dart';

class AuthBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}