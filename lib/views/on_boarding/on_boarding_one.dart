import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../const/color.dart';
import '../../const/images.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(viewportFraction: 1);

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Text(
              'Welcome to',
              style: jost700(26.54.sp, AppColors.primary),
            ),
            SizedBox(
              height: 8.h,
            ),
            Image.asset(
              AppImages.logo,
              height: 43.h,
              width: 202.w,
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: Text(
                'Connecting you with trusted local technicians for any service. Choose from cleaning, plumbing, electrical work, and more!',
                style: jost700(15.17.sp, Color(0xff6B7280)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.onboardingelipse,
                      fit: BoxFit.contain,
                      color: AppColors.primary,
                    )),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 93.h,
                      ),
                      SizedBox(
                        height: 236.h,
                        width: 264.w,
                        child: Image.asset(
                          AppImages.splash_logo2,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
