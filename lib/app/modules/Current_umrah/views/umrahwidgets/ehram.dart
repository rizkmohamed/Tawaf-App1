import 'package:flutter/material.dart';

import 'package:get/instance_manager.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Current_umrah/controllers/current_umrah_controller.dart';


import 'widgets.dart';

// List<Widget> images = [CurrentUmrahSmallImage(), CurrentUmrahSmallImage()];

class Ehram extends StatelessWidget {
  final CurrentUmrahController controller = Get.put(CurrentUmrahController());

  final String? timeText;
  final bool? ismorning;
  final Color? dotColor;
 Ehram({Key? key, this.timeText, this.ismorning, this.dotColor, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Row(
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
            child: CircleAvatar( 
                                radius: 12,
                                backgroundColor: dotColor,
                                child: CircleAvatar(
                                  radius: 7,
                                  backgroundColor: kwhite,
                                ),
                              ),
          ),
          SizedBox(width: widthApp * 0.15, child: UmrahTitleText(title: 'الاحرام')),
         
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
      ),
    );
  }
}

