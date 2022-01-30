import 'package:get/get.dart';

import '../controllers/requset_umrah_controller.dart';

class RequsetUmrahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequsetUmrahController>(
      () => RequsetUmrahController(),
    );
  }
}
