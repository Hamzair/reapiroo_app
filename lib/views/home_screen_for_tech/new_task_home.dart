import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/audio_note.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/my_svg.dart';
import 'package:repairoo/widgets/video_player.dart';

import '../booking_screens/today_screen_widgets/sparepart_dialogue_box.dart';
import 'components/bid_bottom_sheet.dart';
import 'components/cancel_dialog_box.dart';

class NewTaskHome extends StatefulWidget {
  const NewTaskHome({super.key});

  @override
  State<NewTaskHome> createState() => _NewTaskHomeState();
}

class _NewTaskHomeState extends State<NewTaskHome> {

  final TechHomeController homeVM = Get.find<TechHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        isSecondIcon: false,
        secondIcon: "",
        title: "New Task",
        onBackTap: (){
          Get.back();
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                                  Row(
                                    children: [
                                      MySvg(assetName: AppSvgs.calender),
                                      SizedBox(width: 8.w,),
                                      Text("Mon, Dec 23", style: montserrat600(11.sp, AppColors.primary),),
                                    ],
                                  ),
                                  SizedBox(width: 45.w,),
                                  Row(
                                    children: [
                                      MySvg(assetName: AppSvgs.clock),
                                      SizedBox(width: 8.w,),
                                      Text("12:00", style: montserrat600(11.sp, AppColors.primary),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    barrierDismissible: true, // Allows dialog dismissal on outside tap
                                    builder: (BuildContext context) {
                                      return Dialog(

                                        backgroundColor: Colors.transparent,
                                        insetPadding: EdgeInsets.all(16),
                                        child: Center(
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(16.r),
                                            ),
                                            child: SparepartDialogueBox(),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(14.w),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text("Spare Parts", style: jost600(13.sp, AppColors.primary),),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          alignment: Alignment.center,
                          height: 160.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: VideoPlayer(
                            videoUrl: 'assets/video/videotest.mp4',
                          ),
                        ),
                        SizedBox(height: 19.h,),
                        AudioNote(),
                      ]
                  ),
                ),
                SizedBox(height: 26.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 160.w,
                      text: "Bid",
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.secondary,
                      fontSize: 19.sp,
                      onPressed: (){
                        Get.bottomSheet(
                            isScrollControlled: true,
                            isDismissible: true,
                            BidBottomSheet()
                        );
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
                        showDialog(context: context, builder: (BuildContext context){
                          return AlertDialog(
                            backgroundColor: AppColors.secondary,
                            contentPadding: EdgeInsets.zero,
                            content: CancelDialogBox(),
                          );
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
