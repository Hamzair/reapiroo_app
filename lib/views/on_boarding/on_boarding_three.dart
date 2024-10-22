// import 'package:bio_medica/main.dart';
// import 'package:bio_medica/view/const/color.dart';
// import 'package:bio_medica/view/const/image_assets.dart';
// import 'package:bio_medica/widget/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnBoardingThree extends StatelessWidget {
//   const OnBoardingThree({super.key});
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
//
//             ///  Text Latest MedTech Innovations & Updates..
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5.w),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Latest ', // Regular text before "MedTech"
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: primaryColor,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'MedTech ', // "MedTech" in blue
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: buttonColor, // Blue color for "MedTech"
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Innovations & ', // Regular text before "Updates"
//                       style: GoogleFonts.jost(
//                         fontSize: 28.sp,
//                         color: primaryColor,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Updates', // "Updates" in blue
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
//             SizedBox(
//               height: 10.h,
//             ),
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'This is your MedTech Instagram focusing on showcasing the latest developments in medical technology. keeping users informed with text-based ', // Regular text before "MedTech"
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'summaries of new devices, innovations, and breakthroughs in biomedical engineering and healthcare technology. ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 15.sp,
//
//                           color: buttonColor2, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w700,
//
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
//               height: 19.9.h,
//             ),
//             Stack(
//               children: [
//                 Container(
//                     width: double.infinity,
//                     child: Image.asset(
//                       AppImages.onboardingellipse,
//                       fit: BoxFit.contain,
//                       color: primaryColor,
//                     )),
//                 Center(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 93.h,
//                       ),
//                       SizedBox(
//                           height: 263.h,
//                           width: 266.w,
//                           child: Image.asset(
//                             AppImages.onboarding3,
//                             fit: BoxFit.contain,
//                           )),
//                       SizedBox(
//                         height: 60.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
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
//             //           height: 93.h,
//             //         ),
//             //         SizedBox(
//             //             height: 263.h,
//             //             width: 266.w,
//             //             child: Image.asset(
//             //               AppImages.onboarding3,
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
