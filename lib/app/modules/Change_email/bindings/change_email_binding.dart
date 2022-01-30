import 'package:get/get.dart';

import '../controllers/change_email_controller.dart';

class ChangeEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeEmailController>(
      () => ChangeEmailController(),
    );
  }
}
