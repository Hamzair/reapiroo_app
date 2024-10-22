import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/my_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SafeArea(child: Column(
        children: [
          MyAppBar(isMenu: true, isNotification: true, isTitle: false, isSecondIcon: false),
          SizedBox(height: 17.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 13.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Reminder", style: montserrat600(15.sp, AppColors.primary),),
                SizedBox(height: 8.h,),
                Text("You have an upcoming appointment", style: montserrat400(11.sp, AppColors.primary),),
                SizedBox(height: 14.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jared Hughs", style: jost600(18.sp, AppColors.secondary),),
                              SizedBox(height: 6.h,),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.location_on_outlined, size: 20.w, color: Colors.white,),
                                  SizedBox(width: 2,),
                                  Text("Downtown Road, Dubai.", style: montserrat400(11.sp, AppColors.secondary),),
                                ],
                              ),
                              SizedBox(height: 6.h,),
                              SizedBox(
                                width: 174.w,
                                child: Text("I need to have my outdoor pipes fixed. We have a huge leakage in the valves and the wall fittings.", style: montserrat(9.sp, AppColors.secondary, FontWeight.w300),)),
                            ],
                          ),
                          Container(
                            height: 82.h,
                            width: 92.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.w),
                              image: DecorationImage(image: AssetImage(AppImages.jared_hughs), fit: BoxFit.contain)
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: [
                                      MySvg(assetName: AppSvgs.calender),
                                      SizedBox(width: 8.w,),
                                      Text("Mon, Dec 23", style: montserrat600(11.sp, AppColors.primary),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 45.w,),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      MySvg(assetName: AppSvgs.clock),
                                      SizedBox(width: 8.w,),
                                      Text("12:00", style: montserrat600(11.sp, AppColors.primary),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric( vertical: 14.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.w),
                              ),
                              alignment: Alignment.center,
                              child: Text("Spare Parts", style: jost600(13.sp, AppColors.primary),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric( vertical: 14.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.w),
                              ),
                              alignment: Alignment.center,
                              child: Text("View", style: jost600(13.sp, AppColors.primary),),
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric( vertical: 14.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.w),
                              ),
                              alignment: Alignment.center,
                              child: Text("Open Maps", style: jost600(13.sp, AppColors.primary),),
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric( vertical: 14.h),
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(14.w),
                              ),
                              alignment: Alignment.center,
                              child: Text("Reschedule", style: jost600(13.sp, AppColors.secondary),),
                            ),
                          ),
                        ],
                      )
                    ]
                  ),
                ),
                SizedBox(height: 18.h,),
                Wrap(
                  spacing: 0.8,
                  alignment: WrapAlignment.center,
                  children: [

                  ],
                )
            
              ],
            ),
          )
        ],
      )),
    );
  }
}
