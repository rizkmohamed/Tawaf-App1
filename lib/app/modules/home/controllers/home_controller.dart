import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:twaf/app/modules/home/views/home_view.dart';

class HomeController extends GetxController {
  var tabindex = 0;
  var imageindex = 0;
  List<String> images = [
    'assets/qlanhwru.jpg',
    'assets/screen-0.jpg',
    'assets/qlanhwru.jpg',
    
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changItem(int index) {
    tabindex = index;
    update();
  }

  void onDotClick(int index) {
    imageindex = index;

    update();
  }
}
