import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/color.dart';
import '../../../const/images.dart';
import '../../../const/text_styles.dart';

class TechSignup extends StatelessWidget {
  const TechSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 40.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Image.asset(
                      color: AppColors.primary,
                      AppImages.bigArrow,
                      scale: 3,
                    ),
                    Image.asset(
                      color: AppColors.primary,
                      AppImages.bigArrow,
                      scale: 4.5,
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      'Back',
                      style: jost600(20.sp, AppColors.primary),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(

          ),
          Text(
            'Enter Your Personal Details here.',
            style: jost600(15.17.sp, Color(0xff6B7280)),
          )
        ],
      ),
    );
  }
}
