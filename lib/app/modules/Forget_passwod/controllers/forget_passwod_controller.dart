import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswodController extends GetxController {
  final GlobalKey<FormState> forgetFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController emailController;
  var email = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'VEmail'.tr;
    }
  }

  void checkForget() {
    final isValid = forgetFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }
}
