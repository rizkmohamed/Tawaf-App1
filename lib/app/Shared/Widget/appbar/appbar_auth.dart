import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';

class AppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  final String? title1;
  final String? title2;
  final bool? isActiveback;

  const AppBarAuth({
    Key? key,
    required this.title1,
    this.title2,
    this.isActiveback = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          //   leading: isBack == true?
          //  Container(width: widthApp* 0.07,
          //    child: Column(crossAxisAlignment: CrossAxisAlignment.start,

          // ),
          //  ):
          //  SizedBox(),
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: kgoldColor,
          toolbarHeight: heightApp * 0.21,
          title: Column(
            children: [
              Center(
                child: Text(
                  title1!.tr,
                  style: kWhite_30b,
                ),
              ),
              SizedBox(
                height: heightApp * 0.01,
              ),
              Center(
                child: Text(
                  title2!.tr,
                  style: kWhite_20r,
                ),
              ),
            ],
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
        ),
        Positioned(
          top: heightApp * 0.06,
          right: widthApp * 0.02,
          child: isActiveback == true
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kwhite,
                  ))
              : SizedBox(),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(150.0);
}
