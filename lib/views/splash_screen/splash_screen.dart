
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // AuthController authController = Get.find<AuthController>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(Duration(seconds: 1), () {
  //     if (SharedPrefs.containKey("appOpenForFirstTime")) {
  //       if (SharedPrefs.getPrefsBool("loggedIn") &&
  //           SharedPrefs.containKey("userId") && _auth.currentUser != null) {
  //         authController.getUserData(SharedPrefs.getPrefsString("userId"));
  //         CustomRoute.navigateTo(context, AppNavBar());
  //       } else {
  //         CustomRoute.navigateTo(context, LoginView());
  //       }
  //     } else {
  //       SharedPrefs.setPrefsBool("appOpenForFirstTime", true);
  //       CustomRoute.navigateTo(context, MainOnBoardingView());
  //     }
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => MainOnBoardingView());
    });
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImages.biomedicalogo,
              height: 302.h,
              width: 302.w,
            ),
          )
        ],
      ),
    );
  }
}
