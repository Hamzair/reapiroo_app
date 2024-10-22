import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/text_styles.dart';

class TodayContent extends StatelessWidget {
  const TodayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // Width set to 333 pixels
          height: 164.h, // Height set to 164 pixels
          decoration: BoxDecoration(
            color: AppColors.primary, // Background color, change as needed
            borderRadius: BorderRadius.circular(12.r), // Border radius set to 12 pixels
          ),
          child: Center(
            child: Text(
              'Jared Hughs', // Content inside the container
              style: jost600(16.sp, AppColors.buttontext),
            ),
          ),
        ),
      ],
    );
  }
}
