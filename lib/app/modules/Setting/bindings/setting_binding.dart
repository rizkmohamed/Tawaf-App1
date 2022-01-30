import 'package:get/get.dart';
import 'package:twaf/app/modules/Success_Partners/controllers/success_partners_controller.dart';

import '../controllers/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    
    
  }
}
