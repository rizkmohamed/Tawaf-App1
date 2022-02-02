import 'package:badges/badges.dart';
import 'package:card_swiper/card_swiper.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';

import 'package:twaf/app/Shared/Style/app_icons_icons.dart';
import 'package:twaf/app/Shared/Widget/buttons.dart';
import 'package:twaf/app/Shared/constants.dart';
import 'package:twaf/app/modules/Fatwa/views/fatwa_view.dart';
import 'package:twaf/app/modules/History_order/views/history_order_view.dart';
import 'package:twaf/app/modules/Setting/views/setting_view.dart';
import 'package:twaf/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<FloatingNavbarItem> items = [
    FloatingNavbarItem(icon: AppIcons.main, title: 'Home'.tr),
    FloatingNavbarItem(icon: AppIcons.orders, title: 'Orders'.tr),
    FloatingNavbarItem(
      icon: AppIcons.prayers_and_fatwas,
      title: 'Prayers and fatwas'.tr,
    ),
    FloatingNavbarItem(icon: AppIcons.settings, title: 'Settings'.tr),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: controller.tabindex,
          children: [
            HomeBody(),
            HistoryOrderView(),
            FatwaView(),
            SettingView()
          ],
        ),
        bottomNavigationBar: buildBottomNavBar(),
      );
    });
  }

  Widget buildBottomNavBar() {
    return FloatingNavbar(
      currentIndex: controller.tabindex,
      fontSize: 14,
      iconSize: 30,
      borderRadius: 19,
      selectedBackgroundColor: Colors.transparent,
      selectedItemColor: kgoldColor,
      unselectedItemColor: kgary,
      backgroundColor: controller.tabindex == 0 ? Colors.white : kcardgray,
      items: items,
      onTap: (val) {
        controller.changItem(val);
      },
    );
  }
}

class HomeBody extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Welcom'.tr),
            Badge(
              shape: BadgeShape.circle,
              badgeColor: Colors.red,
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text('3'),
              child: Icon(
                Icons.notifications,
                color: kwhite,
              ),
            )
          ],
        ),
      ),
      extendBody: true,
      backgroundColor: kblack,
      body: Column(
        children: [
          SizedBox(
            height: heightApp * 0.01,
          ),
          SizedBox(
            height: heightApp * 0.65,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return buildImage(index);
              },
              indicatorLayout: PageIndicatorLayout.COLOR,
              autoplay: true,
              pagination: const SwiperPagination(),
              // control: const SwiperControl(),
              itemCount: _controller.images.length,
              itemWidth:widthApp * 0.7,
              itemHeight: heightApp * 0.55,
              layout: SwiperLayout.STACK,
            ),
          ),
          SizedBox(
            height: heightApp * 0.03,
          ),
          Container(
            margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
            height: heightApp * 0.06,
            child: MainButton(
                text: 'طلب عمرة بالانابة'.tr,
                press: () {
                  Get.toNamed(Routes.OFFER);
                }),
          )
        ],
      ),
    );
  }

  Widget buildImage(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Stack(
          children: [
            Image.asset(
              _controller.images[index],
              fit: BoxFit.fill,
            ),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                kdarkgray,
                Colors.transparent,
              ],
            )))
          ],
        ),
      ),
    );
  }
}
