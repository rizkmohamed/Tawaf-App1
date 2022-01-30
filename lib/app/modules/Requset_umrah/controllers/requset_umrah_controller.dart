import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Sex { Mela, Female }

class RequsetUmrahController extends GetxController {
  //TODO: Implement RequsetUmrahController
  final GlobalKey<FormState> requestFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController nameController,
      circumambulationController,
      pursuitController,
      genralController;

  RxString name = ''.obs;
  RxString circumambulation = ''.obs;
  RxString pursuit = ''.obs;
  RxString genral = ''.obs;

  final sexm = Sex.Mela.obs;

  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    circumambulationController = TextEditingController();
    pursuitController = TextEditingController();
    genralController = TextEditingController();

    nameController.addListener(() {
      name.value = nameController.text;
    });
    circumambulationController.addListener(() {
      circumambulation.value = circumambulationController.text;
    });
    pursuitController.addListener(() {
      pursuit.value = pursuitController.text;
    });
    genralController.addListener(() {
      genral.value = genralController.text;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameController.dispose();
    circumambulationController.dispose();
    pursuitController.dispose();
    genralController.dispose();
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return "VName".tr;
    }

    return null;
  }
}
