import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';
import 'package:twaf/app/Shared/Widget/appbar/appbar_basic.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/routes/app_pages.dart';
import '../controllers/current_umrah_controller.dart';
import 'umrahwidgets/ehram.dart';
import 'umrahwidgets/pray.dart';
import 'umrahwidgets/saaiy.dart';
import 'umrahwidgets/taqsir.dart';
import 'umrahwidgets/tawaf.dart';

class CurrentUmrahView extends GetView<CurrentUmrahController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBasic(
          title: 'تفاصيل العمرة الان',
          isActiveback: true,
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            // padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Container(
                      // height: 94,
                      // width: 94,
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            8, 5, 0, 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "عمره عن احمد عمر",
                              style: kGold_18extra,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "رقم الطلب :4784#",
                              style: kGray_14r,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              " 10:30ص  25.4.2022  4/رمضان/1443",
                              style: kGray_12r,
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
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
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthApp* 0.05),
                child: Divider(thickness: heightApp * 0.001, color: Color(0XFFB9B9B9) , ),
              ),
              Expanded(
                flex: 5,
                // height: heightApp * 0.68,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(widthApp * 0.02, heightApp* 0.02, 0, widthApp * 0.02),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Ehram(
                            timeText: "10:30",
                            dotColor: kOrangeBlack,
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Tawaf(
                            timeText: "10:30",
                            dotColor: kOrangeBlack,
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Pray(
                            timeText: "10:30",
                            dotColor: kOrangeBlack,
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Saaiy(
                            timeText: "10:30",
                            dotColor: kOrangeBlack,
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Taqsir(
                            timeText: "10:30",
                            dotColor: kdarkgray,
                          ),
                          SizedBox(height: heightApp * 0.05),
                          Container(
                            margin: EdgeInsetsDirectional.only(end: 8),
                            child: MainButton(
                              text: 'تقييم مقدم العمرة',
                              press: () {
                                Get.toNamed(Routes.RATING);
                              },
                            ),
                          )
                        ],
                      ),
                      PositionedDirectional(
                        start: widthApp * 0.116,
                        top: heightApp * 0.042,
                        child: buildLine(true),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }

  Widget buildLine(bool isactive) {
    return Column(
      children: [
        Container(
          width: widthApp * 0.017,
          child: Column(
            children: [
              Container(
                color: isactive ? kOrangeBlack : kdarkgray,
                height: heightApp * 0.094,
              ),
              Container(
                color: Colors.transparent,
                height: heightApp * 0.024,
              ),
              Container(
                color: isactive ? kOrangeBlack : kdarkgray,
                height: heightApp * 0.095,
              ),
              Container(
                color: Colors.transparent,
                height: heightApp * 0.024,
              ),
              Container(
                color: isactive ? kOrangeBlack : kdarkgray,
                height: heightApp * 0.095,
              ),
              Container(
                height: heightApp * 0.025,
                color: Colors.transparent,
              ),
              Container(
                color: !isactive ? kOrangeBlack : kdarkgray,
                height: heightApp * 0.095,
              ),
            ],
          ),
        ),
      ],
    );
  }

//   List<Step> buildStep() {
//     return [
//       Step(
//           title: Ehram(
//             timeText: "10:30",
//           ),
//           content: SizedBox(height: heightApp * 0.001),
//           isActive: controller.currentStep.value >= 0,
//           state: controller.currentStep.value > 0
//               ? StepState.complete
//               : StepState.indexed),
//       Step(
//           title: Tawaf(),
//           content: SizedBox(height: heightApp * 0.001),
//           isActive: controller.currentStep.value >= 1,
//           state: controller.currentStep.value > 0
//               ? StepState.complete
//               : StepState.indexed),
//       Step(
//           content: SizedBox(height: heightApp * 0.001),
//           title: Pray(),
//           isActive: controller.currentStep.value >= 2,
//           state: controller.currentStep.value > 0
//               ? StepState.complete
//               : StepState.indexed),
//       Step(
//           title: Saaiy(),
//           content: SizedBox(height: heightApp * 0.001),
//           isActive: controller.currentStep.value >= 3,
//           state: controller.currentStep.value > 0
//               ? StepState.complete
//               : StepState.indexed),
//       Step(
//           title: Taqsir(),
//           content: SizedBox(height: heightApp * 0.00),
//           isActive: controller.currentStep.value >= 4,
//           state: StepState.complete),
//     ];
//   }
// }

// /// hardcoded bezier painter
// /// TODO: Bezier curve into package component
// class _BezierPainter extends CustomPainter {
//   const _BezierPainter({
//     required this.color,
//     this.drawStart = true,
//     this.drawEnd = true,
//   });

//   final Color color;
//   final bool drawStart;
//   final bool drawEnd;

//   Offset _offset(double radius, double angle) {
//     return Offset(
//       radius * cos(angle) + radius,
//       radius * sin(angle) + radius,
//     );
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..style = PaintingStyle.fill
//       ..color = color;

//     final radius = size.width / 2;

//     var angle;
//     var offset1;
//     var offset2;

//     var path;

//     if (drawStart) {
//       angle = 3 * pi / 4;
//       offset1 = _offset(radius, angle);
//       offset2 = _offset(radius, -angle);
//       path = Path()
//         ..moveTo(offset1.dx, offset1.dy)
//         ..quadraticBezierTo(0.0, size.height / 2, -radius,
//             radius) // TODO connector start & gradient
//         ..quadraticBezierTo(0.0, size.height / 2, offset2.dx, offset2.dy)
//         ..close();

//       canvas.drawPath(path, paint);
//     }
//     if (drawEnd) {
//       angle = -pi / 4;
//       offset1 = _offset(radius, angle);
//       offset2 = _offset(radius, -angle);

//       path = Path()
//         ..moveTo(offset1.dx, offset1.dy)
//         ..quadraticBezierTo(size.width, size.height / 2, size.width + radius,
//             radius) // TODO connector end & gradient
//         ..quadraticBezierTo(size.width, size.height / 2, offset2.dx, offset2.dy)
//         ..close();

//       canvas.drawPath(path, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(_BezierPainter oldDelegate) {
//     return oldDelegate.color != color ||
//         oldDelegate.drawStart != drawStart ||
//         oldDelegate.drawEnd != drawEnd;
//   }
}
