import 'package:get/get.dart';

import '../features/grammar/grammar_controller.dart';

class GrammarBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut<GrammarController>(() => GrammarController());
  }
}