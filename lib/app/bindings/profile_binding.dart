import 'package:get/get.dart';

import '../features/profile/profile_controller.dart';

class ProfileBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}