import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';

class TodayContent extends StatelessWidget {
  const TodayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 333.w, // Width set to 333 pixels (make sure to use ScreenUtil)
          height: 164.h, // Height set to 164 pixels
          decoration: BoxDecoration(
            color: AppColors.primary, // Background color, change as needed
            borderRadius: BorderRadius.circular(12.r), // Border radius set to 12 pixels
          ),
          child: Padding( // Added Padding to avoid the text sticking to the edges
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h), // Adjust padding as needed
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align column items to the start
                      children: [
                        Text(
                          'Jared Hughs', // Content inside the container
                          style: jost600(16.sp, AppColors.buttontext),
                        ),
                        SizedBox(height: 4.h), // Optional spacing between the name and the address
                        Row(
                          children: [
                            Image.asset(
                              AppImages.pinlocation,
                              height: 12.h,
                              width: 8.w,
                            ),
                            SizedBox(width: 4.w), // Spacing between the icon and the text
                            Text(
                              'Downtown Road, Dubai.', // Content inside the container
                              style: jost400(11.sp, AppColors.buttontext),
                            ),

                          ],
                        ),
                        Text(
                          ' I need to have my outdoor pipes fixed.\n We have a huge leakage in the valves\n and the wall fittings.', // Content inside the container
                          style: jost400(9.sp, AppColors.buttontext),
                        ),
                      ],
                    ),
                    Image.asset(AppImages.jared_hughs,height: 82.h,width: 94.w,),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 43.38.h,
                      width: 195.w,
                      decoration: BoxDecoration(
                        color: AppColors.secondary, // Background color
                        borderRadius: BorderRadius.circular(14.r), // Border radius set to 14
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.w),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppImages.calendericon,height: 14.46.h, width:14.46.w,),
                                SizedBox(width: 3.w),
                                Text(
                                  'Mon, Dec 23', // Content inside the container
                                  style: jost600(10.85.sp, AppColors.primary),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(AppImages.clockicon,height: 14.46.h, width:14.46.w,),
                                SizedBox(width: 3.w),
                                Text(
                                  '12:00', // Content inside the container
                                  style: jost600(10.85.sp, AppColors.primary),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}
