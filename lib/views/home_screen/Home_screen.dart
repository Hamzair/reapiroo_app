import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/app_bars.dart';

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
                        children: [
                          Container(

                          )
                        ],
                      )
                    ]
                  ),
                )
            
              ],
            ),
          )
        ],
      )),
    );
  }
}
