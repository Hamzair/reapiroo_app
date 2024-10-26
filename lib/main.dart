import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/controllers/audio_controller.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/controllers/user_controller.dart';
import 'package:repairoo/views/auth/login_view/login_screen.dart';
import 'package:repairoo/views/bottom_nav/bottom_nav.dart';
import 'package:repairoo/views/home_screen_for_tech/task_description_home.dart';
import 'package:repairoo/views/home_screens_for_customers/CustomerHomeScreen.dart';
import 'package:repairoo/views/home_screens_for_customers/customer_main_home.dart';
import 'package:repairoo/views/home_screens_for_customers/customer_task_home.dart';
import 'package:repairoo/views/home_screens_for_customers/search_offer_screen.dart';
import 'package:repairoo/views/splash_screen/splash_screen.dart';
import 'package:repairoo/views/tech_wallet/wallet_screen.dart';

import 'views/booking_screens/booking_screen_main.dart';
import 'views/chat_screens/chat_screen_detail.dart';
import 'views/chat_screens/chat_screen_main.dart';
import 'views/home_screen_for_tech/Home_screen.dart';
import 'views/profile_screens/edit_profile_screen.dart';
import 'views/profile_screens/profile_screen.dart';

void main() {
  Get.put(UserController());
  Get.put(AudioController());
  Get.put(TechHomeController());
  Get.put(HomeController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
          home: TaskDescriptionHome(),
            // initialBinding: UserBinding(),
          );
        });
  }
}
