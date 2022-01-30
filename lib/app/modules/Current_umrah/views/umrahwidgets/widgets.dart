import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Current_umrah/controllers/current_umrah_controller.dart';

class CurrentUmrahSmallImage extends StatelessWidget {
  final CurrentUmrahController controller = Get.put(CurrentUmrahController());
  final String? imagePath;
  final int? tapindex;
  CurrentUmrahSmallImage({
    Key? key,
    this.imagePath = 'assets/imgsmal2.png',
    this.tapindex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: heightApp * 0.059,
      width: widthApp * 0.118,
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 10, vertical: heightApp * 0.15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Swiper(
                  autoplay: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => Image.asset(
                    controller.smallimages[index],
                    fit: BoxFit.cover,
                  ),
                  index: tapindex,
                  itemWidth: 250,
                  itemHeight: heightApp * 0.3,
                  layout: SwiperLayout.DEFAULT,
                ),
              ),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            imagePath!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class UmrahTitleText extends StatelessWidget {
  final String? title;
  const UmrahTitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title!.tr,
      style: TextStyle(
          color: Color(0XFFF1C87A), fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}

class MapIcon extends StatelessWidget {
  final CurrentUmrahController controller = Get.put(CurrentUmrahController());
  final VoidCallback? press;
  final Color? color;
  MapIcon({
    Key? key,
    this.press,
    this.color = kgary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Image.asset(
        "assets/Icons/live location.png",
        color: color,
        height: 33,
        width: 33,
      ),
    );
  }
}
