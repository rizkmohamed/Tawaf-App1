import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_auth.dart';

import 'package:twaf/app/Shared/Widget/boxMultiField.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarAuth(
          title1: 'تواصل معنا'.tr,
          title2: 'Don not worry we are here to help you!'.tr,
          isActiveback: true,
        ),
        body: SafeArea(
            child: DismissKeyboard(
                child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: heightApp * 0.03),
              Text(
                "الخط الساخن",
                style: kGray_18r,
              ),
              SizedBox(height: heightApp * 0.01),
              Text(
                " 4255364",
                style: kGray_20b,
              ),
              SizedBox(height: heightApp * 0.01),
              Text(
                "اترك لنا رسالتك",
                style: kGray_18r,
              ),
              SizedBox(height: heightApp * 0.02),
              BoxTextField(
                hintText: "Name".tr,
                keyboardType: TextInputType.text,
                controller: controller.nameController,
                onSaved: (p0) {
                  return p0 = controller.name.value;
                },
                // validator: (value) {
                //   return controller.validateName(value!);
                // },
              ),
              SizedBox(height: heightApp * 0.01),
              BoxTextField(
                hintText: "Email".tr,
                keyboardType: TextInputType.text,
                controller: controller.emailController,
                onSaved: (p0) {
                  return p0 = controller.email.value;
                },
                // validator: (value) {
                //   return controller.validateName(value!);
                // },
              ),
              SizedBox(height: heightApp * 0.01),
              BoxTextField(
                hintText: "العنوان".tr,
                keyboardType: TextInputType.text,
                controller: controller.titleController,
                onSaved: (p0) {
                  return p0 = controller.title.value;
                },
                // validator: (value) {
                //   return controller.validateName(value!);
                // },
              ),
              SizedBox(height: heightApp * 0.01),
              BoxMultiField(
                hintText: "الموضوع".tr,
                keyboardType: TextInputType.text,
                controller: controller.titleController,
                onSaved: (p0) {
                  return p0 = controller.title.value;
                },
                // validator: (value) {
                //   return controller.validateName(value!);
                // },
              ),
              SizedBox(height: heightApp * 0.06),
              MainButton(
                text: 'ارسال'.tr,
                press: () {
                  Get.toNamed(Routes.LOGIN);
                },
              ),
            ]),
          ),
        ))));
  }
}
