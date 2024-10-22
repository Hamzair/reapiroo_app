// import 'package:bio_medica/main.dart';
// import 'package:bio_medica/view/const/color.dart';
// import 'package:bio_medica/view/const/image_assets.dart';
// import 'package:bio_medica/widget/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnBoardingFour extends StatelessWidget {
//   const OnBoardingFour({super.key});
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
//             ///  Incredible Keyword Search Engine.
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5.w),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Incredible ', // Regular text before "MedTech"
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: primaryColor,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Keyword ',
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: buttonColor,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Search ',
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: primaryColor,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Engine', // "Updates" in blue
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: buttonColor, // Blue color for "Updates"
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: '.', // Full stop in orange
//                       style: TextStyle(
//                         fontSize: 28.sp,
//                         color: buttonColor2, // Orange color for the full stop
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//
//             ),
//             /// Long Text
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: "Find exactly what you need in seconds! Our powerful keyword search engine is designed to deliver instant results, so you can easily access all the content you're looking for. Whether it's devices, courses, or detailed explanations, ", // Regular text before "MedTech"
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'type in a keyword, and everything you need will be right at your fingertips—fast, accurate, and effortless. ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 15.sp,
//                           color: buttonColor2, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//
//
//
//                     ],
//                   ),
//                 )
//
//             ),
//
//             SizedBox(
//               height: 15.9.h,
//             ),
//             /// Background Blue Circle Image & Center Image
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
//             //           height: 65.h,
//             //         ),
//             //         SizedBox(
//             //             height: 286.h,
//             //             width: 287.w,
//             //             child: Image.asset(
//             //               "assets/images/onboarding_screen_four_image.png",
//             //               fit: BoxFit.contain,
//             //             )),
//             //         SizedBox(
//             //           height: 38.h,
//             //         ),
//             //
//             //       ],
//             //     ),
//             //   ),
//             // )
//
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
//                               SizedBox(
//                                   height: 286.h,
//                                   width: 287.w,
//                                   child: Image.asset(
//                                     "assets/images/onboarding_screen_four_image.png",
//                                     fit: BoxFit.contain,
//                                   )),
//                       SizedBox(
//                         height: 60.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }