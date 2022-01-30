import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs; //

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController emailController,
      passwordController,
      nameConttoller,
      confirmPasswrdController;
  var email = '';
  var password = '';
  var name = '';
  var obscureText = true.obs;
  var checkterms = true.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameConttoller = TextEditingController();
    confirmPasswrdController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    passwordController.dispose();
    emailController.dispose();
    nameConttoller.dispose();
    confirmPasswrdController.dispose();
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'VEmail'.tr;
    }
    if (!GetUtils.isEmail(value)) {
      return 'ChangeEmailError'.tr;
    }
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

  String? validateConfirmPassword(String value) {
    if (value.isEmpty) {
      return "VConfirmPasswordError".tr;
    }
    if (value != passwordController.text) {
      return "PasswordError".tr;
    }
    return null;
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return "VName".tr;
    }

    return null;
  }

  void checkRegister() {
    final isValid = registerFormKey.currentState!.validate();
    if (!isValid) {
      return ;
    } // auth function post register
  }

  void checkChange(bool value) {
    checkterms.value = value;
    update();
  }
}
