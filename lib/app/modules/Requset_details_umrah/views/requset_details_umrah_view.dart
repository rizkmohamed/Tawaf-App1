import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';

import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/Widget/cards/requesr_umrah.dart';
import 'package:twaf/app/Shared/Widget/grey_box.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Requset_umrah/controllers/requset_umrah_controller.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/requset_details_umrah_controller.dart';

class RequsetDetailsUmrahView extends GetView<RequsetDetailsUmrahController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RequsetUmrahController>();

    return Scaffold(
      appBar: AppBarBasic(
        title: 'Order details'.tr,
       isActiveback: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 16, left: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RequestUmrahCard(),

              SizedBox(
                height: heightApp * 0.02,
              ),
              Text(
                "معلومات المُعتَمر عنه".tr,
                style: kGold_18r,
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name".tr,
                          style: kGray_16b,
                        ),
                        Container(
                          child: Text(
                            controller.nameController.text,
                            style: kGray_16r,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Text(
                      "Notes during the tawaf".tr,
                      style: kGray_16b,
                    ),
                    Container(
                      child: Text(
                        controller.circumambulationController.text,
                        style: kGray_16r,
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Text(
                      "Notes during the quest".tr,
                      style: kGray_16b,
                    ),
                    Container(
                      child: Text(
                        controller.pursuitController.text,
                        style: kGray_16r,
                      ),
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Text(
                      "General Notes".tr,
                      style: kGray_16b,
                    ),
                    Container(
                      child: Text(
                        controller.genralController.text,
                        style: kGray_16r,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              // Obx(
              //   () => Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "الجنس",
              //         style: kGray_16b,
              //       ),
              //       // Text(controller.name.value),
              //     ],
              //   ),
              // ),
              // Obx(
              //   () => Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "الحالة",
              //         style: kGray_16b,
              //       ),
              //       // Text(controller.name.value),
              //     ],
              //   ),
              // ),
              //  Obx(
              //     () => Column(
              //       children: [
              //         Text(
              //           "ملاحضات اثناء الطواف",
              //           style: kGray_16b,
              //         ),
              //         Text(controller.circumambulation.value),
              //       ],
              //     ),
              //   ),
              //   Obx(
              //     () => Column(
              //       children: [
              //         Text(
              //           "ملاحظات اثناء السعي ",
              //           style: kGray_16b,
              //         ),
              //         Text(controller.pursuit.value),
              //       ],
              //     ),
              //   ),
              //   Obx(
              //     () => Column(
              //       children: [
              //         Text(
              //           "ملاحظات عامة ",
              //           style: kGray_16b,
              //         ),
              //         Text(controller.genral.value),
              //       ],
              //     ),
              //   ),

              MainButton(
                  text: "Confirmation and follow up".tr,
                  press: () {
                    Get.toNamed(Routes.INVOICE);
                  }),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ]),
      ),
    );
  }
}
