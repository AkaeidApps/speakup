import 'package:get/get.dart';

import '../features/voice_conversation/voice_conversation_controller.dart';

class VoiceConversationBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<VoiceConversationController>(() => VoiceConversationController());
  }
}