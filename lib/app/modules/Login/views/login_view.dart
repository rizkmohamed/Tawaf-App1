import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_auth.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Login/views/login_form.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBarAuth(title1: 'welcome back'.tr, title2: 'we missed you'.tr),
        body: SafeArea(
            child: DismissKeyboard(
                child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: heightApp * 0.03),
              FormLogin(),
              MainButton(
                text: 'LogIn'.tr,
                press: () {
                  Get.toNamed(Routes.LOGIN);
                  controller.checkLogin();
                },
              ),
              SizedBox(
                height: heightApp * 0.33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('new ?'.tr,
                      style: TextStyle(
                        fontSize: 16,
                        color: kblack,
                      )),
                  SizedBox(
                    width: widthApp * 0.01,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Create account'.tr,
                        style: TextStyle(
                          fontSize: 16,
                          color: kgoldColor,
                        )),
                  ),
                ],
              ),
            ]),
          ),
        ))));
  }
}
