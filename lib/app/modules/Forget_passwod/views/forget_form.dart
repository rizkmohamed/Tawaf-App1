import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Forget_passwod/controllers/forget_passwod_controller.dart';
import 'package:twaf/app/modules/Login/controllers/login_controller.dart';
import 'package:twaf/app/modules/Register/controllers/register_controller.dart';
import 'package:twaf/app/routes/app_pages.dart';

class FormForget extends StatelessWidget {
  final ForgetPasswodController controller = Get.put(ForgetPasswodController());
  FormForget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.forgetFormKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: heightApp * 0.03,
              ),
              Text(
                "Enter your email address".tr,
                style: kGray_16b,
              ),
              SizedBox(
                height: heightApp * 0.03,
              ),
              BoxTextField(
                controller: controller.emailController,
                onSaved: (p0) {
                  return controller.email = p0;
                },
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return controller.validateEmail(value!);
                },
                hintText: 'Email'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ],
          ),
        ));
  }
}
