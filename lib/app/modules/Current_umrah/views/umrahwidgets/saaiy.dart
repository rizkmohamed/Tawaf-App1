import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Current_umrah/controllers/current_umrah_controller.dart';

import 'widgets.dart';

class Saaiy extends StatelessWidget {
  final CurrentUmrahController controller = Get.put(CurrentUmrahController());
  final String? timeText;
  final bool? ismorning;
  final Widget? dot;
  Saaiy({Key? key, this.timeText, this.ismorning, this.dot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ListView.separated(
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) => CurrentUmrahSmallImage(),
        //     separatorBuilder: (context, index) => Divider(),
        //     itemCount: 3),
        SizedBox(
          child: Column(
            children: [
              Text(
                timeText!,style: kDarkGray_12r,
              ),
              Text('صباحا',style: TextStyle(color: kdarkgray),)
            ],
          ),
        ),
        SizedBox(
          width: widthApp * 0.1,
          child: dot,
        ),
        SizedBox(width: widthApp * 0.15, child: UmrahTitleText(title: 'السعي')),
       
        SizedBox(
       width: widthApp * 0.52,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate( controller.smallimages.length,
                  (index) => CurrentUmrahSmallImage(
                        imagePath: controller.smallimages[index],tapindex: index,
                      ))),
        ),
        SizedBox(
          width: widthApp * 0.01,
        ),


        MapIcon(),
      ],
    );
  }
}