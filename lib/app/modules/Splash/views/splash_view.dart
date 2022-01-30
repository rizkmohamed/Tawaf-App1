import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/lang/lang_core.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final lang = Get.put(AppLanguageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: heightApp * 0.20,
            ),
            Center(
                child: Image.asset(
              "assets/Icons/Logo-01.png",
              height: 250,
              width: 230,
            )),
            SizedBox(
              height: 42,
              width: 280,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(
                    top: 5,
                    start: 7,
                    bottom: 5,
                    end: 2,
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  alignment: Alignment.center,
                  side: BorderSide(
                    width: 1,
                    color: kgary,
                  ),
                  primary: kwhite,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  showAdaptiveActionSheet(
                    context: context,
                    actions: <BottomSheetAction>[
                      BottomSheetAction(
                          title: Text(
                            'عربي'.tr,
                            style: kBlack_18r,
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            lang.changeLanguage('ar');
                            Get.updateLocale(Locale('ar'));
                            Get.toNamed(Routes.REGISTER);
                          }),
                      BottomSheetAction(
                          title: Text(
                            'English'.tr,
                            style: kBlack_18r,
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            lang.changeLanguage('en');
                            Get.updateLocale(Locale('en'));
                            Get.toNamed(Routes.REGISTER);
                          }),
                      BottomSheetAction(
                          title: Text(
                            'Français'.tr,
                            style: kBlack_18r,
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            lang.changeLanguage('fr');
                            Get.updateLocale(Locale('fr'));
                            Get.toNamed(Routes.REGISTER);
                          }),
                      BottomSheetAction(
                          title: Text(
                            'اردو'.tr,
                            style: kBlack_18r,
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            lang.changeLanguage('ur');
                            Get.updateLocale(Locale('ur'));
                            Get.toNamed(Routes.REGISTER);
                          }),
                    ],
                    cancelAction: CancelAction(
                        title: Text(
                      'cancel'.tr,
                      style: kBlack_18r,
                    )),
                  );
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select the language".tr,
                        style: TextStyle(color: kgary),
                      ),
                      SvgPicture.asset(
                        "assets/Icons/language.svg",
                        color: kgary,
                        height: 33,
                        width: 33,
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
