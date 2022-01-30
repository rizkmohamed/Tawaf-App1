import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  //var isLogin = false.obs;
  var isLoading = false.obs; //

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  
  @override
  void onInit() {
    super.onInit();
    // IsLogin();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
     emailController.dispose();
    passwordController.dispose();
  }

 
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "VPassword".tr;
    }
    if (value.length < 5) {
      return "VPassword6".tr;
    }
    if (value.length > 15) {
      return "VPassword15".tr;
    }
    return null;
  }

String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'VEmail'.tr;
    }
    if (!GetUtils.isEmail(value)) {
      return 'ChangeEmailError'.tr;
    }
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }


}
