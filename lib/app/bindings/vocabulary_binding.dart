import 'package:get/get.dart';

import '../features/vocabulary/vocabulary_controller.dart';

class VocabularyBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<VocabularyController>(() => VocabularyController());
  }
}