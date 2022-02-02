import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/constants.dart';


import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'About us'.tr,
        isActivetop: true,
        // press: () {
        //   Get.toNamed(Routes.SETTING);
        // },
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 9,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (context, index) =>
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "عن التطبيق",
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
        ),
      ),
    );
  }
}
