import 'package:get/get.dart';

import '../controllers/fatwa_controller.dart';

class FatwaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FatwaController>(
      () => FatwaController(),
    );
  }
}
