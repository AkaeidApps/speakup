import 'package:get/get.dart';

import '../features/achievements/achievements_controller.dart';

class AchievementsBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<AchievementsController>(() => AchievementsController());
  }
}