import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_auth.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Change_email/views/form_change_email.dart';

import '../controllers/change_email_controller.dart';

class ChangeEmailView extends GetView<ChangeEmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarAuth(title1: 'Change Email',title2:'Don not worry we are here to help you!' ,isActiveback: true,),
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
                  ChangeEmailForm(),
                  MainButton(
                      text: 'Change'.tr,
                      press: () {
                        controller.checkChangeEmail();
                    
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
