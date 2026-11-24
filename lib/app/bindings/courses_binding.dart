import 'package:get/get.dart';

import '../features/courses/courses_controller.dart';

class CoursesBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<CoursesController>(() => CoursesController());
  }
}