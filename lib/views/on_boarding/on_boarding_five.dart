// import 'package:bio_medica/main.dart';
// import 'package:bio_medica/view/const/color.dart';
// import 'package:bio_medica/view/const/image_assets.dart';
// import 'package:bio_medica/widget/custom_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnBoardingFive extends StatelessWidget {
//   const OnBoardingFive({super.key});
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
//             ///  Incredible Keyword Search Engine.
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Monthly ', // Regular text before "MedTech"
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: buttonColor,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Updates ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: buttonColor, // Blue color for "MedTech"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'and ', // Regular text before "Updates"
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'New ', // "Updates" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor, // Blue color for "Updates"
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Courses', // "Updates" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 28.sp,
//                           color: primaryColor, // Blue color for "Updates"
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
//
//             /// Long Text
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 5.w),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Stay ahead with fresh content! ',
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Every month, we bring you new course releases, updates, and cutting-edge information. ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 15.sp,
//                           color: buttonColor2,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Our commitment is to continuously expand and refine the app, keeping you up to date with the latest advancements in the field of biomedical engineering and the MedTech industry as a whole. ', // "MedTech" in blue
//                         style: GoogleFonts.jost(
//                           fontSize: 14.sp,
//                           color: textColor,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       TextSpan(
//                         text: "\nYou'll never stop learning!,",
//                         style: GoogleFonts.jost(
//                           fontSize: 15.sp,
//                           color: buttonColor2,
//                           fontWeight: FontWeight.w700,
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
//               height: 22.9.h,
//             ),
//
//             /// Background Blue Circle Image & Center Image
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
//                       SizedBox(
//                           height: 267.h,
//                           width: 222.w,
//                           child: Image.asset(
//                             "assets/images/onboarding_screen_five_image.png",
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
//             //           height: 89.h,
//             //         ),
//             //         SizedBox(
//             //             height: 267.h,
//             //             width: 222.w,
//             //             child: Image.asset(
//             //               "assets/images/onboarding_screen_five_image.png",
//             //               fit: BoxFit.contain,
//             //             )),
//             //         SizedBox(
//             //           height: 33.h,
//             //         ),
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
