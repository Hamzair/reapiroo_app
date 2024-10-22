// import 'package:bio_medica/main.dart';
// import 'package:bio_medica/view/const/color.dart';
// import 'package:bio_medica/view/const/image_assets.dart';
// import 'package:bio_medica/widget/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class OnBoardingTwo extends StatelessWidget {
//   const OnBoardingTwo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final PageController _pageController = PageController(viewportFraction: 1);
//
//     return Scaffold(
//       backgroundColor: secondaryColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 80.h,
//             ),
//             ///  Text Interactive Learning Courses & Quizzes.
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Interactive ', // Regular text before "MedTech"
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Learning ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Courses ', // Regular text before "Updates"
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: buttonColor,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: '& ', // "Updates" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor, // Blue color for "Updates"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Quizzes', // "Updates" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: buttonColor, // Blue color for "Updates"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//
//                       TextSpan(
//                         text: '.', // Full stop in orange
//                         style: TextStyle(
//                           fontSize: 28.sp,
//                           color: buttonColor2, // Orange color for the full stop
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//
//             ),
//             SizedBox(
//               height: 10.h,
//             ),
//             /// Text long
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Thorough, text-based learning modules that dive into critical areas of biomedical engineering, ', // Regular text before "MedTech"
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'breaking down complex topics into readable, easy-to-understand sections, ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 15.sp,
//                           color: buttonColor2, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'coupled with a variety of interactive quizez to test your knowledge and skills gained in a certain area. ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//
//
//                     ],
//                   ),
//                 )
//
//             ),
//
//             SizedBox(
//               height: 13.19.h,
//             ),
//             Stack(
//               children: [
//                 Container(
//                     width: double.infinity,
//                     child: Image.asset(AppImages.onboardingellipse ,  fit: BoxFit.contain, color: primaryColor,)
//                 ),
//                 Center(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 93.h,
//                       ),
//                   SizedBox(
//                                 height: 274.h,
//                                 width: 309.w,
//                                 child: Image.asset(
//                                   "assets/images/onboarding_screen_two_image.png",
//                                   fit: BoxFit.contain,
//                                 )),
//                       SizedBox(
//                         height: 60.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//
//             // Expanded(
//             //   child: Container(
//             //     width: double.infinity,
//             //     decoration: BoxDecoration(
//             //         image: DecorationImage(
//             //             image: AssetImage(AppImages.onboardingellipse),
//             //             fit: BoxFit.fill)),
//             //     child: Column(
//             //       children: [
//             //         SizedBox(
//             //           height: 67.h,
//             //         ),
//             //         SizedBox(
//             //             height: 274.h,
//             //             width: 309.w,
//             //             child: Image.asset(
//             //               "assets/images/onboarding_screen_two_image.png",
//             //               fit: BoxFit.contain,
//             //             )),
//             //         SizedBox(
//             //           height: 50.h,
//             //         ),
//             //
//             //       ],
//             //     ),
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
