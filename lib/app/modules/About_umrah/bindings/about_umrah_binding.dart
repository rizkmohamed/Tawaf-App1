import 'package:get/get.dart';

import '../controllers/about_umrah_controller.dart';

class AboutUmrahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutUmrahController>(
      () => AboutUmrahController(),
    );
  }
}
