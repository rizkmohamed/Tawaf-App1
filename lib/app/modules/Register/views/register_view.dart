import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';

import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Login/controllers/login_controller.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';
import 'register_form.dart';

class RegisterView extends GetView<RegisterController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: kgoldColor,
          toolbarHeight: heightApp * 0.21,
          title: Column(
            children: [
              Center(
                child: Text(
                  '!Welcome to Tawaf'.tr,
                  style: kWhite_30b,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
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
                    Text(
                      'Register a new account'.tr,
                      style: kGray_20b,
                    ),

                    FormRegister(),

                    //
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    MainButton(
                      text: 'Register'.tr,
                      press: () {
                        controller.checkRegister();
                        // Get.toNamed(Routes.HOME);
                      },
                    ),
                    SizedBox(
                      height: heightApp * 0.06,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: heightApp * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'.tr,
                              style: TextStyle(
                                fontSize: 16,
                                color: kblack,
                              )),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            },
                            child: Text('LogIn'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kgoldColor,
                                )),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        )));
  }
}
