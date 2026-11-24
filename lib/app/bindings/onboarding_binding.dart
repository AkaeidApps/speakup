import 'package:get/get.dart';

import '../features/onboarding/onboarding_controller.dart';

class OnboardingBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}