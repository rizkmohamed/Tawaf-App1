import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController {
  //TODO: Implement ContactUsController
final GlobalKey<FormState> contactFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController nameController,
      emailController,
      titleController,
      contentController;

  RxString name = ''.obs;
  RxString email = ''.obs;
  RxString title = ''.obs;
  RxString content = ''.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
        nameController = TextEditingController();
    emailController = TextEditingController();
    titleController = TextEditingController();
    contentController = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
         nameController.dispose();
    emailController.dispose();
     titleController.dispose();
     contentController.dispose();
  }
  void increment() => count.value++;
}
