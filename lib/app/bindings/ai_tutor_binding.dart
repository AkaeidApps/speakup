import 'package:get/get.dart';

import '../features/ai_tutor/ai_tutor_controller.dart';

class AITutorBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<AITutorController>(() => AITutorController());
  }
}