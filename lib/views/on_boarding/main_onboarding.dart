import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../const/color.dart';
import 'on_boarding_five.dart';
import 'on_boarding_four.dart';
import 'on_boarding_one.dart';
import 'on_boarding_three.dart';
import 'on_boarding_two.dart';

class MainOnBoardingView extends StatefulWidget {
  const MainOnBoardingView({super.key});

  @override
  State<MainOnBoardingView> createState() => _MainOnBoardingViewState();
}

class _MainOnBoardingViewState extends State<MainOnBoardingView> {
  PageController pageController = PageController();
  int currentpage = 0;

  void _moveToNextPage() {
    // Check if there is a next page
    if (currentpage < 4) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else if (currentpage == 4) {
      // Navigate to the LoginView screen
      // Get.offAll(LoginView());
    }
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentpage + 1) / 5;

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Stack(
        children: [
          // PageView with disabled scroll
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentpage = index;
              });
            },
            children: const [
              OnBoardingOne(),
              // OnBoardingTwo(),
              // OnBoardingThree(),
              // OnBoardingFour(),
              // OnBoardingFive(),
            ],
          ),

          // Positioned navigation controls (progress indicator and arrow button)
          Container(
            alignment: const Alignment(0, 0.92),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Page Indicator
                  SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      dotWidth: 9.w,
                      dotHeight: 9.h,
                      activeDotColor: AppColors.primary,
                      dotColor: Colors.grey.shade400,
                    ),
                    controller: pageController,
                    count: 5,
                  ),

                  // Arrow button with circular progress
                  GestureDetector(
                    onTap: () {
                      _moveToNextPage();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary, // Button color
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                          height: 65,
                          child: CircularProgressIndicator(
                            value: progress,
                            strokeWidth: 1.5,
                            backgroundColor: AppColors.primary.withOpacity(0.3),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}