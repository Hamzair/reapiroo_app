import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';

class BookingCard extends StatelessWidget {
  final String name;
  final String location;
  final String description;
  final String date;
  final String time;
  final String imagePath;

  const BookingCard({
    super.key,
    required this.name,
    required this.location,
    required this.description,
    required this.date,
    required this.time,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 164.h,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: jost600(16.sp, AppColors.buttontext),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Image.asset(
                          AppImages.pinlocation, // Replace with your pin location icon path
                          height: 12.h,
                          width: 8.w,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          location,
                          style: jost400(11.sp, AppColors.buttontext),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        description,
                        style: jost400(9.sp, AppColors.buttontext),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  imagePath,
                  height: 82.h,
                  width: 94.w,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date and Time Container
                Container(
                  height: 43.38.h,
                  width: 195.w,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.calendericon, // Replace with your calendar icon path
                              height: 14.46.h,
                              width: 14.46.w,
                            ),
                            SizedBox(width: 3.w),
                            Text(
                              date,
                              style: jost600(10.85.sp, AppColors.primary),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppImages.clockicon, // Replace with your clock icon path
                              height: 14.46.h,
                              width: 14.46.w,
                            ),
                            SizedBox(width: 3.w),
                            Text(
                              time,
                              style: jost600(10.85.sp, AppColors.primary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // View Container
                Container(
                  height: 43.38.h,
                  width: 94.w,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Center(
                    child: Text(
                      'View',
                      style: jost600(13.sp, AppColors.primary),
                    ),
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
