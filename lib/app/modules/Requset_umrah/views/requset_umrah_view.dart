import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/boxMultiField.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/Widget/cards/requesr_umrah.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';
import '../controllers/requset_umrah_controller.dart';

class RequsetUmrahView extends GetView<RequsetUmrahController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RequsetUmrahController());
    return Scaffold(
      appBar: AppBarBasic(
        title: 'طلب عمره بالإنابة'.tr,
        isActiveback: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
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
                child: SingleChildScrollView(
                  child: Column(children: [
                    BoxTextField(
                      hintText: "Name".tr,
                      keyboardType: TextInputType.text,
                      controller: controller.nameController,
                      onSaved: (p0) {
                        return p0 = controller.name.value;
                      },
                      validator: (value) {
                        return controller.validateName(value!);
                      },
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.only(
                          top: 12,
                          start: 7,
                          bottom: 12,
                          end: 2,
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
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
                          // title: const Text('Title'),
                          actions: <BottomSheetAction>[
                            BottomSheetAction(
                                title: Text(
                                  'Male'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  controller.sexm.value;
                                }),
                            BottomSheetAction(
                                title: Text(
                                  'Female'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  controller.sexm.value;
                                }),
                          ],
                          cancelAction:
                              CancelAction(title: Text('cancel'.tr)),
                        );
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sex".tr,
                              style: TextStyle(color: kgary),
                            ),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              color: kgary,
                            )
                          ]),
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsetsDirectional.only(
                          top: 12,
                          start: 7,
                          bottom: 12,
                          end: 2,
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
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
                          // title: const Text('Title'),
                          actions: <BottomSheetAction>[
                            BottomSheetAction(
                                title: Text(
                                  'Sick'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {
                                  Get.toNamed(Routes.LOGIN);
                                }),
                            BottomSheetAction(
                                title: Text(
                                  'helpless'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {}),
                            BottomSheetAction(
                                title: Text(
                                  'dead'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {}),
                            BottomSheetAction(
                                title: Text(
                                  'in another country'.tr,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                onPressed: () {}),
                          ],
                          cancelAction: CancelAction(
                              title: Text('cancel'
                                  .tr)), // onPressed parameter is optional by default will dismiss the ActionSheet
                        );
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "status".tr,
                              style: TextStyle(color: kgary),
                            ),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              color: kgary,
                            )
                          ]),
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    BoxMultiField(
                      hintText:
                          "Notes or supplications during the tawaf (optional)"
                              .tr,
                      keyboardType: TextInputType.text,
                      controller: controller.circumambulationController,
                      onSaved: (value) {
                        controller.circumambulation = value as RxString;
                      },
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    BoxMultiField(
                      hintText:
                          "Notes or supplications during the quest (optional)"
                              .tr,
                      keyboardType: TextInputType.text,
                      controller: controller.pursuitController,
                      onSaved: (value) {
                        controller.pursuit = value as RxString;
                      },
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    BoxMultiField(
                      hintText: "General notes (optional)".tr,
                      keyboardType: TextInputType.text,
                      controller: controller.genralController,
                      onSaved: (value) {
                        controller.genral = value as RxString;
                      },
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              MainButton(
                  text: "tracking".tr,
                  press: () {
                    Get.toNamed(Routes.REQUSET_DETAILS_UMRAH);
                  }),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ]),
      ),
    );
  }
}
