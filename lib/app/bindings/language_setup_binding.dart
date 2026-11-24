import 'package:get/get.dart';

import '../features/language_setup/language_setup_controller.dart';

class LanguageSetupBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<LanguageSetupController>(() => LanguageSetupController());
  }
}