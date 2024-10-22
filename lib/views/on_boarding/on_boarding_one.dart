import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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

            /// Text The best Medical Device Library in the world.
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'The ', // Regular text before "MedTech"
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Only ', // "MedTech" in blue
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary, // Blue color for "MedTech"
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Medical ', // Regular text before "Updates"
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Device ', // "Updates" in blue
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary, // Blue color for "Updates"
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Library ', // "Updates" in blue
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary, // Blue color for "Updates"
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'in the World', // "Updates" in blue
                        style: GoogleFonts.jost(
                          fontSize: 28.sp,
                          color: AppColors.primary, // Blue color for "Updates"
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '.', // Full stop in orange
                        style: TextStyle(
                          fontSize: 28.sp,
                          color: AppColors.primary, // Orange color for the full stop
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 19.81.h,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'A detailed and organized repository of medical devices, ', // Regular text before "MedTech"
                        style: GoogleFonts.jost(
                          fontSize: 15.sp,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            'offering comprehensive information on how each device works, its importance, and its clinical applications, ', // "MedTech" in blue
                        style: GoogleFonts.jost(
                          fontSize: 14.sp,
                          color: AppColors.primary, // Blue color for "MedTech"
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text:
                            'making it an essential reference ', // Regular text before "Updates"
                        style: GoogleFonts.jost(
                          fontSize: 15.sp,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text:
                            'for biomedical engineers and healthcare professionals. ', // "Updates" in blue
                        style: GoogleFonts.jost(
                          fontSize: 14.sp,
                          color: AppColors.primary, // Blue color for "Updates"
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 5.w),
            //   child: CustomText(
            //     textAlign: TextAlign.center,
            //     text:
            //     'A detailed and organized repository of medical devices, offering comprehensive information on how each device works, its importance, and its clinical applications, making it an essential reference for biomedical engineers and healthcare professionals.',
            //     fontsize: 14.sp,
            //     textColor: textColor,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            SizedBox(
              height: 17.19.h,
            ),

            Stack(
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.onboarding1,
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
                          AppImages.onboarding1,
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
            // Expanded(
            //   child: Container(
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //
            //       image: DecorationImage(
            //         image: AssetImage(AppImages.onboardingellipse,
            //
            //         ),
            //
            //         fit: BoxFit.fill,
            //       ),
            //     ),
            //     child: Column(
            //       children: [
            //         SizedBox(
            //           height: 93.h,
            //         ),
            //         SizedBox(
            //           height: 236.h,
            //           width: 264.w,
            //           child: Image.asset(
            //             AppImages.onboarding1,
            //             fit: BoxFit.contain,
            //           ),
            //         ),
            //         SizedBox(
            //           height: 60.h,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
