import 'package:get/get.dart';

import '../features/listening/listening_controller.dart';

class ListeningBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ListeningController>(() => ListeningController());
  }
}