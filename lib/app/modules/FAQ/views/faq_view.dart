import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'الأسئلة الشائعة'.tr, isActiveback: true,

        // press: () {
        //   Get.toNamed(Routes.SETTING);
        // },
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemBuilder: (context, index) => ExpansionTile(
                  //  collapsedBackgroundColor: kgoldColor,
                  headerBackgroundColor: kgoldColor,
                  collapsedIconColor: kwhite,
                  iconColor: kwhite,
                  backgroundColor: kwhite,

                  title: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: kgoldColor,
                    ),
                    child: Text(
                      'العمرة واجبة في العمر مرة',
                      style: kWhite_16b,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها ذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها ',
                        style: kGray_14r,
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
