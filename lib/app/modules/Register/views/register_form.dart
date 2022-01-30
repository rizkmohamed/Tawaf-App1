import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Register/controllers/register_controller.dart';
import 'package:twaf/app/routes/app_pages.dart';

class FormRegister extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());
  FormRegister({
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.registerFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: heightApp * 0.03,
              ),
              BoxTextField(
                controller: controller.nameConttoller,
                keyboardType: TextInputType.name,
                onSaved: (p0) {
                  return controller.name = p0;
                },
                validator: (value) {
                  return controller.validateName(value!);
                },
                hintText: 'Username'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
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
              BoxTextField(
                obsecure: true,
                controller: controller.passwordController,
                onSaved: (p0) {
                  return p0 = controller.password;
                },
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  return controller.validatePassword(value!);
                },
                hintText: 'Password'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              BoxTextField(
                obsecure: true,
                controller: controller.confirmPasswrdController,
                onSaved: (p0) {
                  return p0 = controller.password;
                },
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  return controller.validateConfirmPassword(value!);
                },
                hintText: 'Confirm Password'.tr,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              GetBuilder<RegisterController>(
                  init: RegisterController(),
                  initState: (_) {},
                  builder: (_) {
                    return CheckboxListTile(
                      activeColor: kblack,
                      contentPadding: EdgeInsets.symmetric(horizontal: 0, ),
                      controlAffinity: ListTileControlAffinity.leading,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: Row(
                        children: [
                          Text(
                            'Approval'.tr,
                            style: kGray_16r,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () =>
                                Get.toNamed(Routes.TERMS_AND_CONDITONS),
                            child: Text(
                              'Terms and Conditions'.tr,
                              style: kGold_16r,
                            ),
                          )
                        ],
                      ),
                      value: controller.checkterms.value,
                      onChanged: (value) {
                        return controller.checkChange(value!);
                      },
                    );
                  })
            ],
          ),
        ));
  }
}
