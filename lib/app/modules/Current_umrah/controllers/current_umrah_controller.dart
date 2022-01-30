import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_timeline/flutter_timeline.dart';
import 'package:flutter_timeline/indicator_position.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/constants.dart';

import 'package:twaf/app/modules/Current_umrah/views/umrahwidgets/ehram.dart';
import 'package:twaf/app/modules/Current_umrah/views/umrahwidgets/pray.dart';
import 'package:twaf/app/modules/Current_umrah/views/umrahwidgets/saaiy.dart';
import 'package:twaf/app/modules/Current_umrah/views/umrahwidgets/taqsir.dart';
import 'package:twaf/app/modules/Current_umrah/views/umrahwidgets/tawaf.dart';

class CurrentUmrahController extends GetxController {
  List<String> smallimages = [
    'assets/imgsmal2.png',
    'assets/smallimg.png',
    'assets/imgsmal2.png',
    'assets/smallimg.png',

  ];
  var currentStep = 0.obs;
  // var steps = {
  //   "الاحرام": [],
  //   "الطواف": [],
  //   "الصلاة": [],
  //   "السعي": [],
  //   "التقصير": [],
  // }.obs;
  // var titles = ["الاحرام", "الطواف", "الصلاة", "السعي", "التقصير"];
  // var times = [
  //   '10:30',
  //   '10:45',
  //   '11:00',
  //   '11:15',
  //   '11:30',
  // ];

  // int _index = 0;
  // int get index => _index;
  // List<Widget> umrahstepsContent =
  //     [Ehram(), Tawaf(), Pray(), Saaiy(), Taqsir()].obs;

  // List<Widget> get umrahStep => umrahstepsContent;

  // TimelineEventDisplay get smallEventDisplay {
  //   return TimelineEventDisplay(
  //       child: Card(
  //         child: TimelineEventCard(
  //           title: Text("click the + button"),
  //           content: Text("to add a new event item"),
  //         ),
  //       ),
  //       indicatorSize: 12,
  //       indicator: Container(
  //         width: 12,
  //         height: 12,
  //         decoration: BoxDecoration(color: Colors.blueAccent),
  //       ));
  // }

  // Widget get randomIndicator {
  //   var candidates = [
  //     Container(
  //       width: 16,
  //       height: 16,
  //       decoration: BoxDecoration(
  //         color: Colors.blueAccent,
  //         borderRadius: BorderRadius.all(Radius.circular(4)),
  //       ),
  //     ),
  //   ];
  //   final _random = Random();
  //   var element = candidates[_random.nextInt(candidates.length)];
  //   return element;
  // }

  // TimelineEventDisplay get plainEventDisplay {
  //   return TimelineEventDisplay(
  //       anchor: IndicatorPosition.top,
  //       indicatorOffset: Offset(0, 24),
  //       child: TimelineEventCard(
  //         title: Text("multi\nline\ntitle\nawesome!"),
  //         content: Text("someone commented on your timeline ${DateTime.now()}"),
  //       ),
  //       indicator: randomIndicator);
  // }

  // late List<TimelineEventDisplay> events;

  @override
  void onInit() {
    // umrahStep;
    // plainEventDisplay;
    // smallEventDisplay;

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // Color getColor(int i) {
  //   if (i == _index) {
  //     return kOrangeColor;
  //   } else if (i < _index) {
  //     return kOrangeColor;
  //   } else {
  //     return kdarkgray;
  //   }
  // }

}
