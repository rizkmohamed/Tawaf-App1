import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:twaf/app/lang/local_storge.dart';

class AppLanguageController extends GetxController {
  var appLocale = 'ar';

  @override
  void onInit() async {
    super.onInit();
    LocalStorage localStorage = LocalStorage();

    // ignore: unnecessary_null_comparison
    if (await localStorage.languageSelected == null) {
      appLocale = appLocale = "ar";
    } else {
      appLocale = await localStorage.languageSelected;
    }
    update();
    Get.updateLocale(Locale(appLocale));
  }

  void changeLanguage(String type) async {
    LocalStorage localStorage = LocalStorage();

    if (appLocale == type) {
      return;
    }
    if (type == 'ar') {
      appLocale = 'ar';
      localStorage.saveLanguageToDisk('ar', 'ee20cac170b54af1a5a9a82c0d47585d');
    } else if (type == 'en') {
      appLocale = 'en';
      localStorage.saveLanguageToDisk('en', '2fbb5fe2e29a4d70aa5854ce7ce3e20b');
    } else if (type == 'ur') {
      appLocale = 'ur';
      localStorage.saveLanguageToDisk('ur', '2fbb5fe2e29a4d70aa5854ce7ce3e20b');
    } else {
      appLocale = 'fr';
      localStorage.saveLanguageToDisk('fr', '2fbb5fe2e29a4d70aa5854ce7ce3e20b');
    }
    update();
  }
}
