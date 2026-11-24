import 'package:get/get.dart';

import '../features/notifications/notifications_controller.dart';

class NotificationsBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}