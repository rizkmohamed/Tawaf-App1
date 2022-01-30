import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';

class AppBarBasic extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? press;
  final bool? isActiveback;
  final bool? isActivetop;

  const AppBarBasic({
    Key? key,
    this.title,
    this.press,
    this.isActiveback = false,
    this.isActivetop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: kwhite,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: isActivetop == false
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        'assets/arrow ios.svg',
                        color: kblack,
                      )),
            ),
            Text(
              title!.tr,
              style: kDarkGray_20r,
            ),
          ],
        ),
        leading: isActiveback == true
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kbuttonback,
                ))
            : null
        // BackButton(
        //   color: kbuttonback,
        //   // onPressed: press,
        // ),
        );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
