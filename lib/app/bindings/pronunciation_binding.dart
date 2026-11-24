import 'package:get/get.dart';

import '../features/pronunciation/pronunciation_controller.dart';

class PronunciationBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<PronunciationController>(() => PronunciationController());
  }
}