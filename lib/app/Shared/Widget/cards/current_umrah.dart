import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

class CurrentUmrahCard extends StatelessWidget {
  const CurrentUmrahCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: widthApp ,margin: EdgeInsetsDirectional.only(end: widthApp * 0.12),
          decoration: BoxDecoration(
            color: kcardgray,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0XFFE4CB9A),
                blurRadius: 1.0,
                spreadRadius: 0.0,
                offset: Offset(0, 2),
              ),
            ],
            border: Border.all(
              color: Color(0XFFECECEC),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                height: 94,
                width: 94,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/Icons/img1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "عمره عن احمد عمر".tr,
                        style: kGold_18extra,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "رقم الطلب :4784#".tr,
                        style: kGray_14r,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " 10:30ص  25.4.2022  4/رمضان/1443".tr,
                        style: kGray_12r,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
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
                            color: Colors.orange,
                            size: 18,
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        PositionedDirectional(
          start: widthApp * 0.8,
          child: Container(
            alignment: FractionalOffset(-0.1, 0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CURRENT_UMRAH);
              },
              child: const CircleAvatar(
                backgroundColor: Color(0XFFECECEC),
                radius: 28,
                child: CircleAvatar(
                  backgroundColor: kcardgray,
                  radius: 26,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kgoldColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
