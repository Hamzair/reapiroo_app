import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/views/booking_screens/booking_screen_main.dart';
import 'package:repairoo/views/chat_screens/chat_screen_main.dart';
import 'package:repairoo/views/home_Screen/home_screen.dart';
import 'package:repairoo/views/profile_screens/profile_screen.dart';

import '../../const/images.dart';
import '../../controllers/nav_bar_controller.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  List<Widget> bottomBarPages = [
    const HomeScreen(),
    const BookingScreenMain(),
    const ChatsScreenMain(),
    const ProfileScreen(),
  ];
  final NavBarController navBarController = Get.put(NavBarController());

  void _navigateToPage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
    _controller.jumpTo(pageIndex);
    Navigator.pop(context); // Close the drawer after navigation
  }

  @override
  Widget build(BuildContext context) {
    bool isIpad = MediaQuery.of(context).size.width > 600;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the dynamic icon height (e.g., 5% of the screen height)
    double iconHeight = screenHeight * 0.05; // Adjust the percentage as needed

    // Determine the scale factor for the icons
    double iconScale = iconHeight / 20;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: navBarController.scaffoldKey,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: AnimatedNotchBottomBar(
          showBlurBottomBar: false,
          showShadow: false,
          itemLabelStyle: TextStyle(
            color: AppColors.secondary,
            fontWeight: FontWeight.w400,
            fontSize: isIpad ? 5.sp : 8.sp,
          ),
          blurFilterY: 10,
          blurFilterX: 10,
          notchBottomBarController: _controller,
          notchColor: AppColors.primary,
          color: AppColors.primary,
          showLabel: true,
          shadowElevation: 0,
          kBottomRadius: 15.0,
          bottomBarWidth: 100.w,
          bottomBarHeight: 11.h,
          removeMargins: false,
          durationInMilliSeconds: 300,
          bottomBarItems: [
            BottomBarItem(
              inActiveItem: Image.asset(AppImages.homeicon),
              activeItem: Image.asset(
                AppImages.homeicon,
                // color: primaryColor,
                // scale: iconScale, // Apply the scale factor
              ),
              itemLabel: 'Home'.tr,
            ),
            BottomBarItem(
              inActiveItem: Image.asset(AppImages.bookingicon),
              activeItem: Image.asset(
                AppImages.bookingicon,
                // color: primaryColor,
                // scale: iconScale, // Apply the scale factor
              ),
              itemLabel: 'Bookings'.tr,
            ),
            BottomBarItem(
              inActiveItem: Image.asset(AppImages.chaticon),
              activeItem: Image.asset(
                AppImages.chaticon,
                // color: primaryColor,
                // alignment: Alignment.center,
                // scale: iconScale, // Apply the scale factor
              ),
              itemLabel: 'Chat'.tr,
            ),
            BottomBarItem(
              inActiveItem: Image.asset(AppImages.profileicon),
              activeItem: Image.asset(
                AppImages.profileicon,
                // color: primaryColor,
                // scale: iconScale, // Apply the scale factor
              ),
              itemLabel: 'Profile'.tr,
            ),
          ],
          onTap: (index) {
            // joinchatcontroller.comingfromhome.value = false;
            _pageController.jumpToPage(index);
          },
          kIconSize: 22.sp,
          // kIconSize: 8.h,
        ));
  }
}
