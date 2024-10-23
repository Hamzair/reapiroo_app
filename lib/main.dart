import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/views/home_screen/Home_screen.dart';
import 'package:repairoo/controllers/tech_controller.dart';
import 'package:repairoo/views/auth/login_view/login_screen.dart';
import 'package:repairoo/views/auth/signup_view/role_screen.dart';
import 'package:repairoo/views/splash_screen/splash_screen.dart';

import 'views/booking_screens/booking_screen_main.dart';
import 'views/chat_screens/chat_screen_detail.dart';
import 'views/chat_screens/chat_screen_main.dart';
import 'views/profile_screens/edit_profile_screen.dart';
import 'views/profile_screens/profile_screen.dart';

void main() {

  Get.put(TechController());

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
          home: const
          RoleScreen(),
        // EditProfileScreen(),
   // ProfileScreen(),
   //      ChatsScreenMain(),
   //            ChatScreenDetail(),
   //           BookingScreenMain(),

            // initialBinding: UserBinding(),
          );
        });
  }
}
