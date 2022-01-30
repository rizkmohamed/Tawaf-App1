import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';

import '../../constants.dart';

class LastUmrahCard extends StatelessWidget {
  const LastUmrahCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: widthApp,
          margin: EdgeInsetsDirectional.only(end: widthApp * 0.12),
          decoration: BoxDecoration(
            color: kcardgray,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0XFFD8D8D8),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Stack(
                children: [
                  ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(.6),
                            Colors.transparent.withOpacity(.6)
                          ],
                        ).createShader(Rect.fromLTRB(
                            0, -140, rect.width, rect.height - 20));
                      },
                      blendMode: BlendMode.srcATop,
                      child: Container(
                        height: 94,
                        width: 94,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/Icons/img1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                                "assets/Icons/Icon material-done.png")),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                            child: Text(
                          "انتهت العمرة",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0XFFAAFFB5)),
                        )),
                        Center(
                            child: Text(
                          " تقبل الله",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Color(0XFFAAFFB5)),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "عمره عن الأمين احمد",
                        style: kGray_18b,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "رقم الطلب :4784#",
                        style: kGray_14r,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " 10:30ص  25.4.2022  4/رمضان/1443",
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
        PositionedDirectional( start: widthApp * 0.8,
          child: Container(
            alignment: FractionalOffset(-0.1, 0),
            // width: Get.width,
            // height: 50,
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Color(0XFFD8D8D8),
                radius: 28,
                child: CircleAvatar(
                  backgroundColor: kcardgray,
                  radius: 26,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kgary,
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
