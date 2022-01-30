import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Theme.dart';
import 'package:twaf/app/lang/LocalizationService.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    DismissKeyboard(
      child: GetMaterialApp(
        translations: LocalizationService(),
        debugShowCheckedModeBanner: false,
        title: "TawafApp",
        theme: CustomTheme.lightTheme,
        locale: Locale('ar'),
        fallbackLocale: Locale('ar'),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
