import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/terms_and_conditons_controller.dart';

class TermsAndConditonsView extends GetView<TermsAndConditonsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBasic(
          title: 'Terms and Conditions'.tr,
         isActivetop: true,
        ),
        body: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 9,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "البند الاول",
                      style: kDarkGray_20b,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Container(
                      child: Text(
                        "ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيقذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق",
                        style: kGray_14r,
                      ),
                    ),
                  ]),
            )));
  }
}
