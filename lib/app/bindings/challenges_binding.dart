import 'package:get/get.dart';

import '../features/challenges/challenges_controller.dart';

class ChallengesBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<ChallengesController>(() => ChallengesController());
  }
}