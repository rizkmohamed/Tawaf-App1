import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timeline/flutter_timeline.dart';
import 'package:flutter_timeline/indicator_position.dart';

import 'package:get/get.dart';
import 'package:status_change/status_change.dart';
// import 'package:timelines/timelines.dart';

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

const kTileHeight = 50.0;

const completeColor = Color(0xff5e6172);
const inProgressColor = Color(0xFFF1C87A);
const todoColor = Color(0xff707070);

class CurrentUmrahView extends GetView<CurrentUmrahController> {
  // Color getColor(int index) {
  //   if (index == _processIndex) {
  //     return inProgressColor;
  //   } else if (index < _processIndex) {
  //     return completeColor;
  //   } else {
  //     return todoColor;
  //   }
  // }

  var titles = ["الاحرام", "الطواف", "الصلاة", "السعي", "التقصير"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBasic(
          title: 'تفاصيل العمرة الان',
         isActiveback: true,
        ),
        body: Container(
            height: heightApp,
            width: widthApp,
            // padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                "عمره عن احمد عمر",
                                style: kGold_18extra,
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
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: 01.0, color: Color(0XFFB9B9B9)),

                  SizedBox(
                    height: heightApp * 0.68,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8, 18, 0, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Ehram(
                            timeText: "10:30",
                            dot: SvgPicture.asset(
                              'assets/Ellipse 510.svg',
                            ),
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Tawaf(
                            timeText: "10:30",
                            dot: SvgPicture.asset(
                              'assets/Ellipse 510.svg',
                            ),
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Pray(
                            timeText: "10:30",
                            dot: SvgPicture.asset(
                              'assets/Ellipse 510.svg',
                            ),
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Saaiy(
                            timeText: "10:30",
                            dot: SvgPicture.asset(
                              'assets/Ellipse 510.svg',
                            ),
                          ),
                          SizedBox(height: heightApp * 0.06),
                          Taqsir(
                            timeText: "10:30",
                            dot: SvgPicture.asset(
                              'assets/Ellipse 510.svg',
                            ),
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

                          // Timeline.tileBuilder(
                          //  // padding: EdgeInsets.all(5),
                          //  shrinkWrap: true,
                          //   theme: TimelineThemeData(
                          //     direction: Axis.vertical,
                          //     connectorTheme: ConnectorThemeData(
                          //       space: 30.0,
                          //       thickness: 5.0,
                          //     ),
                          //   ),
                          //   builder: TimelineTileBuilder.connected(
                          //     contentsAlign: ContentsAlign.reverse,
                          //     connectionDirection: ConnectionDirection.before,
                          //     itemExtentBuilder: (_, __) =>
                          //           //  MediaQuery.of(context).size.width / titles.length,
                          //         heightApp * 0.6/ titles.length,
                          //     oppositeContentsBuilder: (context, index) {
                          //       return Padding(
                          //           padding: const EdgeInsets.only(bottom: 15.0),
                          //           child: Text(controller.times[index]));
                          //     },
                          //     contentsBuilder: (context, index) {
                          //       return Padding(
                          //           padding: const EdgeInsets.only(top: 2.0),
                          //           child: Column(
                          //             children: [
                          //              Ehram()
                          //               //  UmrahTitleText(title: 'FDSZDXFCGVH',)
                          //             ],
                          //           ));
                          //     },
                          //     indicatorBuilder: (_, index) {
                          //       var color;
                          //       var child;
                          //       if (index == _processIndex) {
                          //         color = inProgressColor;
                          //         child = Padding(
                          //           padding: const EdgeInsets.all(8.0),
                          //           child: CircularProgressIndicator(
                          //             strokeWidth: 3.0,
                          //             valueColor: AlwaysStoppedAnimation(Colors.white),
                          //           ),
                          //         );
                          //       } else if (index < _processIndex) {
                          //         color = completeColor;
                          //         child = Icon(
                          //           Icons.check,
                          //           color: Colors.white,
                          //           size: 15.0,
                          //         );
                          //       } else {
                          //         color = todoColor;
                          //       }

                          //       if (index <= _processIndex) {
                          //         return Stack(
                          //           children: [
                          //             // CustomPaint(
                          //             //   size: Size(30.0, 30.0),
                          //             //   painter: _BezierPainter(
                          //             //     color: color,
                          //             //     drawStart: index > 0,
                          //             //     drawEnd: index < _processIndex,
                          //             //   ),
                          //             // ),
                          //             DotIndicator(
                          //               size: 30,
                          //               color: color,
                          //               child: child,
                          //             ),
                          //           ],
                          //         );
                          //       } else {
                          //         return Stack(
                          //           children: [
                          //             // CustomPaint(
                          //             //   size: Size(15.0, 15.0),
                          //             //   painter: _BezierPainter(
                          //             //     color: color,
                          //             //     drawEnd: index < titles.length - 1,
                          //             //   ),
                          //             // ),
                          //             OutlinedDotIndicator(
                          //               borderWidth: 4.0,
                          //               color: color,
                          //             ),
                          //           ],
                          //         );
                          //       }
                          //     },
                          //     connectorBuilder: (_, index, type) {
                          //       if (index > 0) {
                          //         if (index == _processIndex) {
                          //           final prevColor = getColor(index - 1);
                          //           final color = getColor(index);
                          //           List<Color> gradientColors;
                          //           if (type == ConnectorType.start) {
                          //             gradientColors = [
                          //               Color.lerp(prevColor, color, 0.5)!,
                          //               color
                          //             ];
                          //           } else {
                          //             gradientColors = [
                          //               prevColor,
                          //               Color.lerp(prevColor, color, 0.5)!
                          //             ];
                          //           }
                          //           return DecoratedLineConnector(
                          //             decoration: BoxDecoration(
                          //               gradient: LinearGradient(
                          //                 colors: gradientColors,
                          //               ),
                          //             ),
                          //           );
                          //         } else {
                          //           return SolidLineConnector(
                          //             color: getColor(index),
                          //           );
                          //         }
                          //       } else {
                          //         return null;
                          //       }
                          //     },
                          //     itemCount: titles.length,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),

                  // Directionality(
                  //   textDirection: TextDirection.rtl,
                  //   child: Container(
                  //     height: heightApp * 0.7,
                  //     child: StatusChange.tileBuilder(
                  //       theme: StatusChangeThemeData(
                  //         direction: Axis.vertical,
                  //         connectorTheme: ConnectorThemeData(
                  //           space: 1.0,
                  //           thickness: 20,
                  //         ),
                  //       ),
                  //       builder: StatusChangeTileBuilder.connected(
                  //         // itemWidth: (_) => widthApp,
                  //         contentWidgetBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(8),
                  //             child: controller.umrahstepsContent[index],
                  //           );
                  //         },
                  //         nameWidgetBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(8),
                  //             child: Text(
                  //               controller.times[index],
                  //               style: TextStyle(
                  //                   color: controller.getColor(index),
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 15),
                  //             ),
                  //           );
                  //         },
                  //         indicatorWidgetBuilder: (_, index) {
                  //           if (index == controller.index) {
                  //             return Container(
                  //               decoration: BoxDecoration(
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                     color: kOrangeColor.withOpacity(0.5),
                  //                     blurRadius: 2, // soften the shadow
                  //                     spreadRadius: 3, //extend the shadow
                  //                     offset: Offset(
                  //                       2, // Move to right 10  horizontally
                  //                       5, // Move to bottom 10 Vertically
                  //                     ),
                  //                   )
                  //                 ],
                  //               ),
                  //               child: DotIndicator(
                  //                 size: 25,
                  //                 border: Border.all(
                  //                     color: kOrangeColor, width: 5),
                  //                 child: Container(
                  //                   decoration: BoxDecoration(
                  //                     shape: BoxShape.circle,
                  //                     color: kwhite,
                  //                   ),
                  //                 ),
                  //               ),
                  //             );
                  //           }
                  //           if (index < controller.index) {
                  //             return DotIndicator(
                  //               size: 25,
                  //               border:
                  //                   Border.all(color: kOrangeColor, width: 5),
                  //               child: Container(
                  //                 decoration: BoxDecoration(
                  //                   shape: BoxShape.circle,
                  //                   color: kwhite,
                  //                 ),
                  //               ),
                  //             );
                  //           } else {
                  //             return DotIndicator(
                  //               size: 25,
                  //               border:
                  //                   Border.all(color: kdarkgray, width: 5),
                  //               child: Container(
                  //                 decoration: BoxDecoration(
                  //                   shape: BoxShape.circle,
                  //                   color: kwhite,
                  //                 ),
                  //               ),
                  //             );
                  //           }
                  //         },
                  //         lineWidgetBuilder: (index) {
                  //           if (index <= controller.index) {
                  //             // final prevColor =
                  //             //     controller.getColor(index - 1);
                  //             // final color = controller.getColor(index);
                  //             // var gradientColors;
                  //             // gradientColors = [
                  //             //   prevColor,
                  //             //   Color.lerp(prevColor, color, 0.5)
                  //             // ];
                  //             return SolidLineConnector(
                  //               thickness: 20,
                  //               color: kOrangeColor,
                  //             );
                  //           } else {
                  //             return SolidLineConnector(
                  //               thickness: 20,
                  //               color: kdarkgray,
                  //             );
                  //           }
                  //         },
                  //         itemCount: controller.titles.length,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10,),

                  // Stepper(
                  //   type: StepperType.vertical,
                  //   steps: buildStep(),
                  //   currentStep: controller.currentStep.value,
                  //   onStepContinue: () {
                  //     if (controller.currentStep.value ==
                  //         buildStep().length - 1) {
                  //       print("Send data to server");
                  //     } else {
                  //       controller.currentStep.value++;
                  //     }
                  //   },

                  //   onStepCancel: () {
                  //     controller.currentStep.value == 0
                  //         ? null
                  //         : controller.currentStep.value--;
                  //   },
                  //   onStepTapped: (index) {
                  //     controller.currentStep.value = index;
                  //   },
                  // controlsBuilder: (context, {onStepContinue, onStepCancel}) {
                  //   return Container(
                  //     child: Row(
                  //       children: [
                  //         Expanded(
                  //           child: ElevatedButton(
                  //             child: Text(controller.currentStep.value==buildStep().length-1?"Submit":"Next"),
                  //             onPressed: onStepContinue,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 16,
                  //         ),
                  //         if(controller.currentStep.value!=0)
                  //           Expanded(
                  //             child: ElevatedButton(
                  //               child: Text("Previous"),
                  //               onPressed: onStepCancel,
                  //             ),
                  //           ),
                  //       ],
                  //     ),
                  //   );
                  // },
                  // ),

                  // Expanded(
                  //   child: Container(
                  //     //height: 300,

                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Column(
                  //               children: [
                  //                 Text("10:30"),
                  //                 Text("صباحاً"),
                  //               ],
                  //             ),
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text("10:45"),
                  //                 Text("صباحاً"),
                  //               ],
                  //             ),
                  //             Column(
                  //               children: [
                  //                 Text("11:30"),
                  //                 Text("صباحاً"),
                  //               ],
                  //             ),
                  //             Column(
                  //               children: [
                  //                 Text("11:40"),
                  //                 Text("صباحاً"),
                  //               ],
                  //             ),
                  //             Column(
                  //               children: [
                  //                 Text(""),
                  //                 Text(""),
                  //               ],
                  //             ),
                  //           ],
                  //         ),

                  //         SizedBox(width: 10),
                  //         Stack(
                  //           alignment: Alignment.center,
                  //           children: [
                  //             RotatedBox(
                  //               quarterTurns: -1,
                  //               child: LinearProgressIndicator(
                  //                 minHeight: 5,
                  //                 color: Color(0xFFE9B85C),
                  //                 backgroundColor: Colors.grey.shade600,
                  //                 value: 0.9,
                  //               ),
                  //             ),
                  //             Column(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Stack(
                  //                   alignment: Alignment.center,
                  //                   children: [
                  //                     Container(
                  //                       width: 22,
                  //                       height: 22,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xFFE9B85C),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       width: 15,
                  //                       height: 15,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Stack(
                  //                   alignment: Alignment.center,
                  //                   children: [
                  //                     Container(
                  //                       width: 22,
                  //                       height: 22,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xFFE9B85C),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       width: 15,
                  //                       height: 15,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Stack(
                  //                   alignment: Alignment.center,
                  //                   children: [
                  //                     Container(
                  //                       width: 22,
                  //                       height: 22,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xFFE9B85C),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       width: 15,
                  //                       height: 15,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Stack(
                  //                   alignment: Alignment.center,
                  //                   children: [
                  //                     Container(
                  //                       width: 22,
                  //                       height: 22,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Color(0xFFE9B85C),
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       width: 15,
                  //                       height: 15,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Stack(
                  //                   alignment: Alignment.center,
                  //                   children: [
                  //                     Container(
                  //                       width: 22,
                  //                       height: 22,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.grey.shade600,
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       width: 15,
                  //                       height: 15,
                  //                       decoration: BoxDecoration(
                  //                         shape: BoxShape.circle,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //         //SizedBox(width: 10),
                  //         Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Ehram(), Ehram(), Ehram(), Ehram(), Ehram(), Ehram(),
                  //             // Tawaf(),
                  //             // Pray(),
                  //             // Saaiy(),
                  //             // Taqsir(),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                ]),
                Positioned(
                  right: widthApp * 0.112, top: heightApp * 0.19,
                  child: Container(
                    width: widthApp * 0.1,
                    height: heightApp * 0.55,
                    child:
                        //  statusChangeLine(),
                        Center(child: buildLine(true)),
                    //  _buildTimeline(),
                  ),
                  // child: Timeline.tileBuilder(
                  //     builder: TimelineTileBuilder.connected(
                  //         itemCount: controller.times.length,
                  //         indicatorBuilder: (_, index) {
                  //           var color;
                  //           var child;
                  //           if (index == _processIndex) {
                  //             color = inProgressColor;
                  //             child = Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: CircularProgressIndicator(
                  //                 strokeWidth: 3.0,
                  //                 valueColor: AlwaysStoppedAnimation(
                  //                     Colors.white),
                  //               ),
                  //             );
                  //           } else if (index < _processIndex) {
                  //             color = completeColor;
                  //             child = Icon(
                  //               Icons.check,
                  //               color: Colors.white,
                  //               size: 15.0,
                  //             );
                  //           } else {
                  //             color = todoColor;
                  //           }

                  //           // if (index <= _processIndex) {
                  //           //   return Stack(
                  //           //     children: [
                  //           //       // CustomPaint(
                  //           //       //   size: Size(30.0, 30.0),
                  //           //       //   painter: _BezierPainter(
                  //           //       //     color: color,
                  //           //       //     drawStart: index > 0,
                  //           //       //     drawEnd: index < _processIndex,
                  //           //       //   ),
                  //           //       // ),
                  //           //       DotIndicator(
                  //           //         size: 30,
                  //           //         color: color,
                  //           //         child: child,
                  //           //       ),
                  //           //     ],
                  //           //   );
                  //           // }
                  //         }))
                ),
              ],
            )));
  }

  // Widget _buildTimeline() {
  //   return TimelineTheme(
  //       data: TimelineThemeData(
  //           lineColor: kOrangeBlack, itemGap: 100, lineGap: 0),
  //       child: Timeline(
  //         shrinkWrap: true,
  //         anchor: IndicatorPosition.center,
  //         indicatorSize: 30,
  //         altOffset: Offset(10, 40),
  //         events: [],
  //       ));
  // }

  // Widget statusChangeLine() {
  //   return StatusChange.tileBuilder(
  //     theme: StatusChangeThemeData(
  //       direction: Axis.vertical,
  //       connectorTheme: ConnectorThemeData(
  //         space: 1.0,
  //         thickness: 20,
  //       ),
  //     ),
  //     builder: StatusChangeTileBuilder.connected(
  //       // itemWidth: (_) => widthApp,
  //       contentWidgetBuilder: (context, index) {
  //         return Padding(
  //           padding: const EdgeInsets.all(8),
  //           child: controller.umrahstepsContent[index],
  //         );
  //       },
  //       // nameWidgetBuilder: (context, index) {
  //       //   return Padding(
  //       //     padding: const EdgeInsets.all(8),
  //       //     child: Text(
  //       //       controller.times[index],
  //       //       style: TextStyle(
  //       //           color: controller.getColor(index),
  //       //           fontWeight: FontWeight.bold,
  //       //           fontSize: 15),
  //       //     ),
  //       //   );
  //       // },
  //       indicatorWidgetBuilder: (_, index) {
  //         if (index == controller.index) {
  //           return Container(
  //             decoration: BoxDecoration(
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: kOrangeBlack.withOpacity(0.5),
  //                   blurRadius: 2, // soften the shadow
  //                   spreadRadius: 3, //extend the shadow
  //                   offset: Offset(
  //                     2, // Move to right 10  horizontally
  //                     5, // Move to bottom 10 Vertically
  //                   ),
  //                 )
  //               ],
  //             ),
  //             child: DotIndicator(
  //               size: 25,
  //               border: Border.all(color: kOrangeBlack, width: 5),
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle,
  //                   color: kwhite,
  //                 ),
  //               ),
  //             ),
  //           );
  //         }
  //         if (index < controller.index) {
  //           return DotIndicator(
  //             size: 25,
  //             border: Border.all(color: kOrangeBlack, width: 5),
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: kwhite,
  //               ),
  //             ),
  //           );
  //         } else {
  //           return DotIndicator(
  //             size: 25,
  //             border: Border.all(color: kdarkgray, width: 5),
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: kwhite,
  //               ),
  //             ),
  //           );
  //         }
  //       },
  //       lineWidgetBuilder: (index) {
  //         if (index <= controller.index) {
  //           // final prevColor =
  //           //     controller.getColor(index - 1);
  //           // final color = controller.getColor(index);
  //           // var gradientColors;
  //           // gradientColors = [
  //           //   prevColor,
  //           //   Color.lerp(prevColor, color, 0.5)
  //           // ];
  //           return SolidLineConnector(
  //             thickness: 20,
  //             color: kOrangeBlack,
  //           );
  //         } else {
  //           return SolidLineConnector(
  //             thickness: 20,
  //             color: kdarkgray,
  //           );
  //         }
  //       },
  //       itemCount: controller.titles.length,
  //     ),
  //   );
  // }

  Widget buildLine(bool isactive) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: Colors.transparent,
              width: widthApp * 0.05,
              height: heightApp * 0.05,
            ),
            Container(
              color: isactive ? kOrangeBlack : kblack,
              width: widthApp * 0.02,
              height: heightApp * 0.09,
            ),
            Container(
              color: Colors.transparent,
              width: widthApp * 0.02,
              height: heightApp * 0.027,
            ),
            Container(
              color: isactive ? kOrangeBlack : kblack,
              width: widthApp * 0.02,
              height: heightApp * 0.09,
            ),
            Container(
              color: Colors.transparent,
              width: widthApp * 0.02,
              height: heightApp * 0.03,
            ),
            Container(
              color: isactive ? kOrangeBlack : kblack,
              width: widthApp * 0.02,
              height: heightApp * 0.09,
            ),
            Container(
              color: Colors.transparent,
              width: widthApp * 0.02,
              height: heightApp * 0.03,
            ),
            Container(
              color:  isactive ? kOrangeBlack : kblack,
              width: widthApp * 0.02,
              height: heightApp * 0.09,
            ),
          ],
        ),
      ],
    );
  }

  List<Step> buildStep() {
    return [
      Step(
          title: Ehram(
            timeText: "10:30",
          ),
          content: SizedBox(height: heightApp * 0.001),
          isActive: controller.currentStep.value >= 0,
          state: controller.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Tawaf(),
          content: SizedBox(height: heightApp * 0.001),
          isActive: controller.currentStep.value >= 1,
          state: controller.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed),
      Step(
          content: SizedBox(height: heightApp * 0.001),
          title: Pray(),
          isActive: controller.currentStep.value >= 2,
          state: controller.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Saaiy(),
          content: SizedBox(height: heightApp * 0.001),
          isActive: controller.currentStep.value >= 3,
          state: controller.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed),
      Step(
          title: Taqsir(),
          content: SizedBox(height: heightApp * 0.00),
          isActive: controller.currentStep.value >= 4,
          state: StepState.complete),
    ];
  }
}

/// hardcoded bezier painter
/// TODO: Bezier curve into package component
class _BezierPainter extends CustomPainter {
  const _BezierPainter({
    required this.color,
    this.drawStart = true,
    this.drawEnd = true,
  });

  final Color color;
  final bool drawStart;
  final bool drawEnd;

  Offset _offset(double radius, double angle) {
    return Offset(
      radius * cos(angle) + radius,
      radius * sin(angle) + radius,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    final radius = size.width / 2;

    var angle;
    var offset1;
    var offset2;

    var path;

    if (drawStart) {
      angle = 3 * pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);
      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(0.0, size.height / 2, -radius,
            radius) // TODO connector start & gradient
        ..quadraticBezierTo(0.0, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
    if (drawEnd) {
      angle = -pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);

      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(size.width, size.height / 2, size.width + radius,
            radius) // TODO connector end & gradient
        ..quadraticBezierTo(size.width, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_BezierPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.drawStart != drawStart ||
        oldDelegate.drawEnd != drawEnd;
  }
}
