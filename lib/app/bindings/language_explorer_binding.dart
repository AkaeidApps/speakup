import 'package:get/get.dart';

import '../features/language_explorer/language_explorer_controller.dart';

class LanguageExplorerBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<LanguageExplorerController>(() => LanguageExplorerController());
  }
}