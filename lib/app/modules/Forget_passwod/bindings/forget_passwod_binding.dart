import 'package:get/get.dart';

import '../controllers/forget_passwod_controller.dart';

class ForgetPasswodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPasswodController>(
      () => ForgetPasswodController(),
    );
  }
}
