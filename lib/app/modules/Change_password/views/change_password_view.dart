import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_auth.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/change_password_controller.dart';
import 'change_pass_form.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarAuth(
          title1: 'Change Password',
          title2: 'Don not worry we are here to help you!',
          isActiveback: true,
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

                    ChangePasswordForm(),
                    //
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    MainButton(
                      text: 'Change'.tr,
                      press: () {
                        controller.checkUpdatePassword();
                      },
                    ),
                  ]),
            ),
          ),
        )));
  }
}
