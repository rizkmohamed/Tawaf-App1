import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/success_partners_controller.dart';

class SuccessPartnersView extends GetView<SuccessPartnersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'Success Partners',
       isActivetop: true,
      ),
      body: Container(
        child: ListView.separated(
            padding: EdgeInsets.symmetric(
                horizontal: widthApp * 0.05, vertical: heightApp * 0.03),
            itemBuilder: (context, index) => Container(
                  child: Image.asset(controller.images[index]),
                  height: heightApp * 0.2,
                  decoration: BoxDecoration(
                    color: kboxGrayGround,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.shade300,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: heightApp * 0.05,
                ),
            itemCount: controller.images.length),
      ),
    );
  }
}
