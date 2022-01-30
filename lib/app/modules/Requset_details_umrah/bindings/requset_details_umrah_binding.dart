import 'package:get/get.dart';

import '../controllers/requset_details_umrah_controller.dart';

class RequsetDetailsUmrahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequsetDetailsUmrahController>(
      () => RequsetDetailsUmrahController(),
    );
  }
}
