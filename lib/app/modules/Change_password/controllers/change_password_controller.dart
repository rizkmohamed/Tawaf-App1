import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  var isLoading = false.obs; //

  final GlobalKey<FormState> changePasswordFormKey =
      GlobalKey<FormState>(); // Form

  late TextEditingController newpasswordController,
      currentPasswordConttoller,
      confirmNewtPasswordController;

  var newpassword = '';
  var currentpassword = '';
  var obscureText = true.obs;

  @override
  void onInit() {
    super.onInit();

    newpasswordController = TextEditingController();
    currentPasswordConttoller = TextEditingController();
    confirmNewtPasswordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    newpasswordController.dispose();
    currentPasswordConttoller.dispose();
    confirmNewtPasswordController.dispose();
  }

  String? validateCurrentPassWord(String value) {
    if (value.isEmpty) {
      return 'CurrentPasswordError'.tr;
    }
    // if (!GetUtils.isEmail(value)) { // the same of login pass validation
    //   return 'ChangeEmailError'.tr;
    // }
  }

  String? validateNewPassword(String value) {
    if (value.isEmpty) {
      return 'NewPasswordError'.tr;
    }
    if (value.length < 5) {
      return "VPassword6".tr;
    }
    if (value.length > 15) {
      return "VPassword15".tr;
    }
    return null;
  }

  String? validateConfirmNewPassword(String value) {
    if (value.isEmpty) {
      return 'ConfirmNewPasswordError'.tr;
    }
    if (value != newpasswordController.text) {
      return 'VConfirmNewPasswordError'.tr;
    }
    return null;
  }

  void checkUpdatePassword() {
    final isValid = changePasswordFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } // auth function post register
  }
}
