import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_auth.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Forget_passwod/views/forget_form.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/forget_passwod_controller.dart';

class ForgetPasswodView extends GetView<ForgetPasswodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuth(
        title1: 'FPassword?'.tr,
        title2: 'Don not worry we are here to help you!'.tr,
      ),
      body: SafeArea(
        child: DismissKeyboard(
          child: Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heightApp * 0.03,
                  ),
                  FormForget(),
                  SizedBox(
                    height: 42,
                    width: 390,
                    child: MainButton(
                        text: "ok".tr,
                        press: () {
                          Get.back();
                          controller.checkForget();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
