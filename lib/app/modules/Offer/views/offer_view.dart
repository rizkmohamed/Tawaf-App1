import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/cards/offer.dart';
import 'package:twaf/app/Shared/Widget/grey_box.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/offer_controller.dart';

class OfferView extends GetView<OfferController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(title: 'Umrah Offers', isActiveback: true,),
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: heightApp * 0.02,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsetsDirectional.only(
                    top: 5,
                    start: 7,
                    bottom: 5,
                    end: 2,
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  alignment: Alignment.center,
                  side: BorderSide(
                    width: 1,
                    color: kgary,
                  ),
                  primary: kwhite,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        backgroundColor: Colors.white,
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2022, 1, 1),
                      maxTime: DateTime(2032, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    // _date = '${date.year} - ${date.month} - ${date.day}';
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select the date of Umrah from the calendar".tr,
                        style: TextStyle(color: kgary),
                      ),
                      SvgPicture.asset(
                        "assets/Icons/calendar.svg",
                        color: kgary,
                        height: 33,
                        width: 33,
                      )
                    ]),
              ),
               SizedBox(
                height: heightApp * 0.02,
              ),
              Text(
                "Latest Offers".tr,
                style: kGold_18extra,
              ),
               SizedBox(
                height: heightApp * 0.02,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 9,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemBuilder: (context, index) => OfferCard()),
              ),
            ]),
      ),
    );
  }
}
