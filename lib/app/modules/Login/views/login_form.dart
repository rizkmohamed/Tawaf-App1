import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Login/controllers/login_controller.dart';
import 'package:twaf/app/modules/Register/controllers/register_controller.dart';
import 'package:twaf/app/routes/app_pages.dart';

class FormLogin extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.loginFormKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                hintText:'Email'.tr,
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
             
            
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.FORGET_PASSWOD);
                      },
                      child: Text(
                        'FPassword?'.tr,
                        style: TextStyle(
                          color: kgary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
                 SizedBox(
                height: heightApp * 0.02,
              ),
            ],
          ),
        ));
  }
}
