import 'package:get/get.dart';

import '../controllers/current_umrah_controller.dart';

class CurrentUmrahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrentUmrahController>(
      () => CurrentUmrahController(),
    );
  }
}
