import 'package:get/get.dart';

import '../controllers/terms_and_conditons_controller.dart';

class TermsAndConditonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsAndConditonsController>(
      () => TermsAndConditonsController(),
    );
  }
}
