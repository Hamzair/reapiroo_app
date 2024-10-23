import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/my_svg.dart';

class TaskDescriptionHome extends StatefulWidget {
  const TaskDescriptionHome({super.key});

  @override
  State<TaskDescriptionHome> createState() => _TaskDescriptionHomeState();
}

class _TaskDescriptionHomeState extends State<TaskDescriptionHome> {

  final TechHomeController homeVM = Get.find<TechHomeController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: MyAppBar(
          isMenu: homeVM.isMenu.value,
          isNotification: homeVM.isNotification.value,
          isTitle: homeVM.isTitle.value,
          isSecondIcon: homeVM.isSecondIcon.value,
          title: homeVM.title.value,
          onBackTap: (){
            homeVM.updateAppBar(true, false, true, false, "");
            homeVM.isHome.value = "main";
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                Text("Plumbing", style: jost700(24.sp, AppColors.primary),),
                SizedBox(height: 9.h,),
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
                              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
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
                                padding: EdgeInsets.symmetric( vertical: 12.h),
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
                        Container(
                          height: 138.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            image: DecorationImage(image: AssetImage(AppImages.plumbing_thumbnail), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12.w),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                                  decoration: BoxDecoration(
                                    color: AppColors.secondary,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.w,),
                                      bottomRight: Radius.circular(12.w),
                                    )

                                  ),
                                  child: Text("video", style: montserrat400(11.sp, AppColors.primary),),
                                ),
                              ),
                              SizedBox(height: 16.h,),
                              Align(
                                alignment: Alignment.center,
                                child: MySvg(assetName: AppSvgs.play_icon, height: 50.h, width: 47.5.w,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 19.h,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MySvg(assetName: AppSvgs.audio_play_icon, height: 36.h, width: 36.w,),
                            SizedBox(width: 12.w,),
                            Expanded(
                              child: Container(
                                height: 36.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(AppImages.audio), fit: BoxFit.fill)
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 21.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: (){
                                  homeVM.updateAppBar(false, true, false, false, "Task Description");
                                  homeVM.isHome.value = "task";
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric( vertical: 12.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.w),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("Chat", style: jost600(13.sp, AppColors.primary),),
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric( vertical: 12.h),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                alignment: Alignment.center,
                                child: Text("Open Maps", style: jost600(13.sp, AppColors.primary),),
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric( vertical: 12.h),
                                decoration: BoxDecoration(
                                  color: AppColors.lightGrey,
                                  borderRadius: BorderRadius.circular(8.w),
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
                SizedBox(height: 26.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(
                      width: 160.w,
                        text: "Mark as done",
                        backgroundColor: AppColors.primary,
                        textColor: AppColors.secondary,
                        fontSize: 19.sp,
                        onPressed: (){
                          homeVM.updateAppBar(false, true, false, false, "New Task");
                          homeVM.isHome.value = "new task";
                        },
                    ),

                    CustomElevatedButton(
                      width: 160.w,
                      text: "Cancel",
                      backgroundColor: AppColors.buttonGrey,
                      textColor: AppColors.primary,
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.transparent
                      ),
                      fontSize: 19.sp,
                      onPressed: (){
                        homeVM.updateAppBar(true, false, true, false, "");
                        homeVM.isHome.value = "main";
                      },
                    ),
                  ],
                )





              ],
            ),
          ),
        ),
      );
  }
}
