import 'package:get/get.dart';

import '../features/settings/settings_controller.dart';

class SettingsBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}