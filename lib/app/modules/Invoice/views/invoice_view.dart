import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/BoxTextField.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/invoice_controller.dart';

class InvoiceView extends GetView<InvoiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'Receivable Summary'.tr,
      isActiveback: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Umrah price".tr,
                          style: kGray_16b,
                        ),
                        Text(
                          "500ريال",
                          style: kGray_16r,
                        )
                      ],
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Value Added".tr,
                          style: kGray_16b,
                        ),
                        Text(
                          "075ريال",
                          style: kGray_16r,
                        )
                      ],
                    ),
                    SizedBox(
                      height: heightApp * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "coupon code".tr,
                          style: kGray_16b,
                        ),
                        SizedBox(
                          width: widthApp * 0.33,
                        ),
                        Expanded(
                          child: FormField(
                            builder: (FormFieldState state) {
                              return SizedBox(
                                height: 33,
                                // child:

                                //  Padding(
                                //   padding: const EdgeInsets.only(
                                //       right: 99,),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12.0,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(5),
                                    // border: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.circular(12),
                                    //   borderSide: BorderSide(
                                    //     color: Colors.grey,
                                    //     style: BorderStyle.solid,
                                    //     width: 1,
                                    //   ),
                                    // ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: kgary),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: kgary),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: kgary),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 01.0,
                      color: kdarkgray,
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Umrah price".tr,
                          style: kGold_18extra,
                        ),
                        Text(
                          "500ريال",
                          style: kGold_18extra,
                        )
                      ],
                    ),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    const Divider(
                      thickness: 01.0,
                      color: kdarkgray,
                    ),
                     SizedBox(
                      height: heightApp * 0.02,
                    ),
                  ],
                ),
              ),
              MainButton(
                  text: "Choose your payment method and continue".tr,
                  press: () {
                    showAdaptiveActionSheet(
                      context: context,
                      // title: const Text('Title'),
                      actions: <BottomSheetAction>[
                        BottomSheetAction(
                            title: Image.asset(
                              "assets/Icons/visa.png",
                              height: 33,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            }),
                        BottomSheetAction(
                            title: Image.asset(
                              "assets/Icons/Apple_Pay.png",
                              height: 33,
                            ),
                            onPressed: () {}),
                        BottomSheetAction(
                            title: Image.asset(
                              "assets/Icons/paypal (1).png",
                              height: 33,
                            ),
                            onPressed: () {}),
                      ],
                      cancelAction: CancelAction(
                          title: Text('cancel'
                              .tr)), // onPressed parameter is optional by default will dismiss the ActionSheet
                    );
                  }),
              SizedBox(
                height: heightApp * 0.02,
              ),
            ]),
      ),
    );
  }
}
