import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Change_email/controllers/change_email_controller.dart';
import 'package:twaf/app/modules/Forget_passwod/controllers/forget_passwod_controller.dart';

class ChangeEmailForm extends StatelessWidget {
  final ChangeEmailController controller = Get.put(ChangeEmailController());
  ChangeEmailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.changeEmailFormKey,
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
                "New Email Address".tr,
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
                hintText: 'Enter New Email'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              BoxTextField(
                controller: controller.confirmNewEmailController,
                // onSaved: (p0) {
                //   return controller.email = p0;
                // },
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return controller.validateConfirmEmail(value!);
                },
                hintText: 'Enter New Email again'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ],
          ),
        ));
  }
}
