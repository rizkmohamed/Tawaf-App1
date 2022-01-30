import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/grey_box.dart';
import 'package:twaf/app/Shared/constants.dart';

class RequestUmrahCard extends StatelessWidget {
  const RequestUmrahCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: heightApp*0.01,
          ),
          Text(
            "Umrah information".tr,
            style: kGold_18r,
          ),
          SizedBox(
            height: heightApp * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Umrah time".tr,
                style: kGray_16b,
              ),
              Text(
                "10:30ص".tr,
                style: kGray_16r,
              )
            ],
          ),
           SizedBox(
            height: heightApp * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Gregorian date".tr,
                style: kGray_16b,
              ),
              Text(
                "25.4.2022".tr,
                style: kGray_16r,
              )
            ],
          ),
            SizedBox(
            height: heightApp * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hijri date".tr,
                style: kGray_16b,
              ),
              Text(
                "4/رمضان/1443".tr,
                style: kGray_16r,
              )
            ],
          ),
            SizedBox(
            height: heightApp * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order Number #".tr,
                style: kGray_16b,
              ),
              Text(
                "4567".tr,
                style: kGray_16r,
              )
            ],
          ),
           SizedBox(
            height: heightApp * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Umrah performer name".tr,
                style: kGray_16b,
              ),
              Text(
                "محمد احمد يس".tr,
                style: kGray_16r,
              )
            ],
          ),
        SizedBox(
            height: heightApp * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Rating".tr,
                style: kGray_16b,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: Colors.orange,
                      size: 18,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.star_rounded,
                color: Colors.orange,
                size: 18,
              ),
              const Icon(
                Icons.star_rounded,
                color: Colors.orange,
                size: 18,
              ),
              const Icon(
                Icons.star_rounded,
                color: Colors.orange,
                size: 18,
              ),
              const Icon(
                Icons.star_rounded,
                color: kgary,
                size: 18,
              ),
            ],
          ),
            SizedBox(
            height: heightApp * 0.02,
          ),
          BoxGrey(
              height: 47,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Umrah price".tr,
                      style: kGold_18extra,
                    ),
                    Text(
                      "500ريال".tr,
                      style: kGold_18extra,
                    )
                  ],
                ),
              ))]);
  }
}