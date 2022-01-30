import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/cards/current_umrah.dart';
import 'package:twaf/app/Shared/Widget/cards/last_umrah.dart';

import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/history_order_controller.dart';

class HistoryOrderView extends GetView<HistoryOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBasic(
        title: 'order'.tr,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: heightApp * 0.25,
              child: ListView.separated(
                padding: EdgeInsetsDirectional.only(start: 0, top: 10),
                shrinkWrap: true,
                itemCount: 1,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.CURRENT_UMRAH);
                    },
                    child: CurrentUmrahCard()),
              ),
            ),
            const Divider(
              thickness: 01.0,
              color: Color(0XFFB9B9B9),
            ),
            SizedBox(
              height: heightApp * 0.6,
              child: ListView.separated(
                padding: EdgeInsetsDirectional.only(top: 10),
                shrinkWrap: true,
                itemCount: 5,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) => LastUmrahCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
