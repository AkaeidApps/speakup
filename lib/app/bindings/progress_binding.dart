import 'package:get/get.dart';

import '../features/progress/progress_controller.dart';

class ProgressBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ProgressController>(() => ProgressController());
  }
}