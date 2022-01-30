import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoiceController extends GetxController {
  //TODO: Implement InvoiceController
  final GlobalKey<FormState> CubonFormKey = GlobalKey<FormState>(); // Form
late TextEditingController CubonController;
  @override
  void onInit() {
    super.onInit();
      CubonController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    CubonController.dispose();
  }
  
}
