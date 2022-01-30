import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';

import 'package:twaf/app/Shared/Widget/boxMultiField.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/rating_controller.dart';

class RatingView extends GetView<RatingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'Rating'.tr,
        isActiveback: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: heightApp * 0.02,
            ),
            Center(
              child: Text(
                "Tell us, how was your experience with us?".tr,
                style: kGray_16r,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: heightApp * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFD3D3D3),
                  size: 25,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFD3D3D3),
                  size: 25,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFD3D3D3),
                  size: 25,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFD3D3D3),
                  size: 25,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: Color(0xFFD3D3D3),
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: heightApp * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey.shade300,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                maxLines: 7,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 12.0,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Add more details".tr,
                  hintStyle: kGray_14r,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: heightApp * 0.11,
            ),
            MainButton(text: "Submit evaluation".tr, press: () {})
          ],
        ),
      ),
    );
  }
}
