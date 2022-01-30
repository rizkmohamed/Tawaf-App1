import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Change_password/controllers/change_password_controller.dart';

class ChangePasswordForm extends StatelessWidget {
  final ChangePasswordController controller =
      Get.put(ChangePasswordController());
  ChangePasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.changePasswordFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Password'.tr,
                style: kGray_20b,
              ),
              SizedBox(
                height: heightApp * 0.03,
              ),
              BoxTextField(
                controller: controller.currentPasswordConttoller,
                keyboardType: TextInputType.visiblePassword,
                onSaved: (p0) {
                  return controller.currentpassword = p0;
                },
                validator: (value) {
                  return controller.validateCurrentPassWord(value!);
                },
                hintText: 'EnterCurrentPassword'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Text(
                'New Password'.tr,
                style: kGray_20b,
              ),SizedBox(
                height: heightApp * 0.02,
              ),
              BoxTextField(
                obsecure: true,
                controller: controller.newpasswordController,
                onSaved: (p0) {
                  return p0 = controller.newpassword;
                },
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  return controller.validateNewPassword(value!);
                },
                hintText: 'Enter New Password'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              BoxTextField(
                obsecure: true,
                controller: controller.confirmNewtPasswordController,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  return controller.validateConfirmNewPassword(value!);
                },
                hintText: 'Enter New Password again'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ],
          ),
        ));
  }
}
