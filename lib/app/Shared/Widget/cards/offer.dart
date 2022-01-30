import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';

class OfferCard extends StatelessWidget {
  final double? height;
  const OfferCard({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.REQUSET_UMRAH);
      },
      child: Container(
       padding: EdgeInsets.fromLTRB(8, 8, 5, 8),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kcardgray,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1,
              
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/Icons/img1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(flex: 3,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25/4/2022",
                            style: kGold_18extra,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 65.0),
                            child: Text(
                              "10:30ص",
                              style: kGold_18extra,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heightApp * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "4/رمضان/1443",
                            style: kGray_14r,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heightApp * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "رقم الطلب :4784#",
                            style: kGray_14r,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 19.0),
                            child: Row(
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
                                  color: kgary,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
