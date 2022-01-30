import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/lang/lang_controller.dart';
import 'package:twaf/app/modules/About/views/about_view.dart';
import 'package:twaf/app/modules/About_umrah/views/about_umrah_view.dart';
import 'package:twaf/app/modules/FAQ/views/faq_view.dart';
import 'package:twaf/app/modules/Success_Partners/controllers/success_partners_controller.dart';
import 'package:twaf/app/modules/Success_Partners/views/success_partners_view.dart';
import 'package:twaf/app/modules/Terms_and_conditons/views/terms_and_conditons_view.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final lang = Get.put(AppLanguageController());
  final success = Get.put(SuccessPartnersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'Settings'.tr,
        // press: () {
        //   Get.toNamed(Routes.HOME);
        // },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SettingItem(
              imagePath: "assets/Icons/language.png",
              title: 'Language'.tr,
              press: () {
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
                          Get.toNamed(Routes.HOME);
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
                          Get.toNamed(Routes.HOME);
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
                          Get.toNamed(Routes.HOME);
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
                          Get.toNamed(Routes.HOME);
                        }),
                  ],
                  cancelAction: CancelAction(
                      title: Text(
                    'cancel'.tr,
                    style: kBlack_18r,
                  )),
                );
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/updates.png",
              title: 'System updates'.tr,
              press: () {
                showAdaptiveActionSheet(
                  context: context,
                  actions: <BottomSheetAction>[
                    BottomSheetAction(
                        title: Text(
                          'تتوفر نسخة جديدة من التطبيق'.tr,
                          style: kBlack_18r,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {}),
                    BottomSheetAction(
                        title: Text(
                          'تحديث وإعادة التشغيل'.tr,
                          style: kGold_18r,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {}),
                    BottomSheetAction(
                        title: Text(
                          'التحديث لاحقاً'.tr,
                          style: kGold_18r,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {}),
                  ],
                  cancelAction: CancelAction(
                      title: Text(
                    'cancel'.tr,
                    style: kBlack_18r,
                  )),
                );
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/change email.png",
              title: 'Change Email'.tr,
              press: () {
                Get.toNamed(Routes.CHANGE_EMAIL);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/change password .png",
              title: 'Change Password'.tr,
              press: () {
                Get.toNamed(Routes.CHANGE_PASSWORD);
              },
            ),
            SizedBox(
              height: 5,
            ),
            SettingItem(
              imagePath: "assets/Icons/About Umrah.png",
              title: 'Umrah adjective'.tr,
              press: () {
                Get.bottomSheet(
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: heightApp * 0.9,
                      child: AboutUmrahView()),
                      enableDrag: true,
                  isScrollControlled: true,ignoreSafeArea: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                );
                
                // Get.toNamed(Routes.ABOUT_UMRAH);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/Success Partners.png",
              title: 'Success Partners'.tr,
              press: () {
                Get.bottomSheet(
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: heightApp * 0.9,
                      child: SuccessPartnersView()),
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                );
                // Get.toNamed(Routes.SUCCESS_PARTNERS);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/FAQ.png",
              title: 'common questions'.tr,
              press: () {
                Get.toNamed(Routes.FAQ);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/Terms and Conditions.png",
              title: 'Terms and Conditions'.tr,
              press: () {
                Get.bottomSheet(
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: heightApp * 0.9,
                      child: TermsAndConditonsView()),
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                );
                // Get.toNamed(Routes.TERMS_AND_CONDITONS);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/Info.png",
              title: 'About us'.tr,
              press: () {
                Get.bottomSheet(
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: heightApp * 0.9,
                      child: AboutView()),
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                );
                // Get.toNamed(Routes.ABOUT);
              },
            ),
            SettingItem(
              imagePath: "assets/Icons/contact us.png",
              title: 'Connect with us'.tr,
              press: () {
                Get.toNamed(Routes.CONTACT_US);
              },
            ),
          ],
        ),
      ),
    );
  }
  //  navigteBottomSheet(AboutUmrahView aboutUmrahView, {Widget? page}){
  //    return

  //  }
}

class SettingItem extends StatelessWidget {
  final String? title;
  final VoidCallback? press;
  final String? imagePath;

  const SettingItem({
    Key? key,
    required this.title,
    required this.press,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          height: heightApp * 0.06,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(
            vertical: heightApp * 0.005,
          ),
          decoration: BoxDecoration(
            color: kcardgray,
            border: Border.all(
              color: kbordercardgray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath!,
                color: kgoldColor,
              ),
              Expanded(
                child: Text(
                  title!.tr,
                  style: kGray_18r,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: kgoldColor,
                size: 18,
              ),
            ],
          ))
          //  ListTile(
          //   contentPadding: EdgeInsetsDirectional.only(start: 10, end: 20, ),
          //   leading: Image.asset(
          //     imagePath!,
          //     color: kgoldColor,
          //   ),
          //   title: Text(
          //     title!.tr,
          //     style: kGray_18r,
          //   ),
          //   trailing: Icon(
          //     Icons.arrow_forward_ios_outlined,
          //     color: kgoldColor,
          //     size: 20,
          //   ),
          //   selected: true,
          //   onTap: press,
          // ),
          ),
    );
  }
}
