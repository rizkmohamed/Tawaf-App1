import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Dismiss_Keyboard.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/fatwa_controller.dart';

class FatwaView extends GetView<FatwaController> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBarBasic(
            title: 'Prayers and fatwas',
          ),
          body: DismissKeyboard(
            child: Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: <Widget>[
                  // the tab bar with two items
                  SizedBox(
                    height: heightApp * 0.065,
                    child: AppBar(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13))),
                      backgroundColor: kcardgray,
                      bottom: TabBar(
                        labelColor: kwhite,
                        unselectedLabelColor: kgary,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13)),
                          color: kgoldColor,
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              'Prayers and fatwas'.tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Archives'.tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // create widgets for each tab bar here
                  SizedBox(
                    height: heightApp * 0.012,
                  ),
                  SizedBox(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search for medicines and fatwas".tr,
                        hintStyle: kGray_14r,
                        errorStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kgary),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kgary),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kgary),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kgary),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightApp * 0.012,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: 15,
                          separatorBuilder: (context, index) => SizedBox(
                            height: heightApp * 0.012,
                          ),
                          itemBuilder: (context, index) => ExpansionTile(
                            // onExpansionChanged: (value) =>
                            //     controller.getOnExpantion(value),
                            // collapsedBackgroundColor: kgoldColor,
                            headerBackgroundColor: kgoldColor,
                            collapsedIconColor: kwhite,
                            iconColor: kwhite,
                            backgroundColor: kwhite,
                            leading: Image.asset(
                              "assets/Icons/Save.png",
                              color: kwhite,
                              height: 44,
                              width: 44,
                            ),
                            title: Container(
                              child: Text('العمرة واجبة في العمر مرة',
                                  style: kWhite_16b),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
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
                          ),
                        ),

                        // second tab bar viiew widget
                        ListView.separated(
                            shrinkWrap: true,
                            itemCount: 10,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 10,
                                ),
                            itemBuilder: (context, index) => ExpansionTile(
                                  // collapsedBackgroundColor: kcardgray,
                                  headerBackgroundColor: kcardgray,
                                  iconColor: kgary,
                                  collapsedIconColor: kgary,
                                  backgroundColor: kwhite,
                                  leading: Image.asset(
                                    "assets/Icons/Save.png",
                                    color: kgoldColor,
                                    height: 44,
                                    width: 44,
                                  ),
                                  title: Container(
                                    // decoration: BoxDecoration(
                                    //   borderRadius:
                                    //       BorderRadius.all(Radius.circular(10.0)),
                                    //   color: kcardgray,
                                    // ),
                                    child: Text(
                                      'العمرة واجبة في العمر مرة',
                                      style: kGray_16b,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
