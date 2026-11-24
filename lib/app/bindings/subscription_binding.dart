import 'package:get/get.dart';

import '../features/subscription/subscription_controller.dart';

class SubscriptionBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionController>(() => SubscriptionController());
  }
}