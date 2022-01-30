import 'package:get/get.dart';

import '../controllers/success_partners_controller.dart';

class SuccessPartnersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessPartnersController>(
      () => SuccessPartnersController(),
    );
  }
}
