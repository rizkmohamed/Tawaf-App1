import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeEmailController extends GetxController {
 final GlobalKey<FormState> changeEmailFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController emailController , confirmNewEmailController;
  var email = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    confirmNewEmailController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    confirmNewEmailController.dispose();
  }



  void checkChangeEmail() {
    final isValid = changeEmailFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }
  
  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'VEmail'.tr;
    }
    if (!GetUtils.isEmail(value)) {
      return 'VChangeEmailError'.tr;
    }
  }
  String? validateConfirmEmail(String value) {
    if (value.isEmpty) {
      return 'ConfirmEmailError'.tr;
    }
    if (value != emailController.text) {
      return 'VConfirmEmailError'.tr;
    }
    return null;
  }
}
