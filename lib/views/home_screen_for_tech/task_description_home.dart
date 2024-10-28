import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/views/home_screen_for_tech/components/cancel_dialog_box.dart';
import 'package:repairoo/views/home_screen_for_tech/main_home.dart';
import 'package:repairoo/views/home_screen_for_tech/new_task_home.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/audio_note.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';
import 'package:repairoo/widgets/my_svg.dart';
import '../../controllers/post_controller.dart';
import '../../widgets/video_player.dart';
import '../booking_screens/today_screen_widgets/sparepart_dialogue_box.dart';

class TaskDescriptionHome extends StatefulWidget {
  const TaskDescriptionHome({super.key, required this.comingFrom});

  final String comingFrom;

  @override
  State<TaskDescriptionHome> createState() => _TaskDescriptionHomeState();
}

class _TaskDescriptionHomeState extends State<TaskDescriptionHome> {
  final TechHomeController homeVM = Get.find<TechHomeController>();
  final PostController postController = Get.put(PostController());
  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        isSecondIcon: false,
        title: 'Task Description',
        onBackTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Plumbing",
                  style: jost700(24.sp, AppColors.primary),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 21.h,
                          width: 108.w,
                          decoration: BoxDecoration(
                              color: AppColors.textFieldGrey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.w),
                                bottomRight: Radius.circular(12.w),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "New",
                            style: montserrat600(11.sp, AppColors.primary),
                          ),
                        ),
                        Container(
                          height: 21.h,
                          width: 108.w,
                          decoration: BoxDecoration(
                              color: AppColors.textFieldGrey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12.w),
                                bottomLeft: Radius.circular(12.w),
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "Plumbing",
                            style: montserrat600(11.sp, AppColors.primary),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jared Hughs",
                                      style:
                                      jost600(18.sp, AppColors.secondary),
                                    ),
                                    Text(
                                      "ID #2145",
                                      style:
                                      jost600(12.sp, AppColors.secondary),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(AppImages.pinlocation, width: 15.w, height: 15.h,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(
                                      "Downtown Road, Dubai.",
                                      style: montserrat400(
                                          11.sp, AppColors.secondary),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                SizedBox(
                                    width: 174.w,
                                    child: Text(
                                      "I need to have my outdoor pipes fixed. We have a huge leakage in the valves and the wall fittings.",
                                      style: montserrat(9.sp,
                                          AppColors.secondary, FontWeight.w300),
                                    )),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 16.w),
                            height: 82.h,
                            width: 98.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.w),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.jared_hughs),
                                    fit: BoxFit.fill)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w,),
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
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "Mon, Dec 23",
                                          style: montserrat600(
                                              11.sp, AppColors.primary),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    child: Row(
                                      children: [
                                        MySvg(assetName: AppSvgs.clock),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          "12:00",
                                          style: montserrat600(
                                              11.sp, AppColors.primary),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              if (widget.comingFrom == "booking") {
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
                              } else if (widget.comingFrom == "tech") {
                                showDialog(
                                  context: context,
                                  barrierDismissible: true, // Allows dialog dismissal on outside tap
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: AppColors.secondary,
                                      title: Center(
                                        child: Text(
                                          "Spare Parts",
                                          style: jost700(18.sp, AppColors.primary),
                                        ),
                                      ),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "James has purchased the spare part you requested, please check the invoice thoroughly and select how you would like to pay for it",
                                              style: jost400(12.sp, AppColors.primary),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20.h),
                                            SizedBox(
                                              height: 193.h,
                                              child: Stack(
                                                alignment: Alignment.bottomCenter,
                                                children: [
                                                  Image.asset(AppImages.invoice),
                                                  CustomElevatedButton(
                                                    borderSide: BorderSide(color: Color(0xffA6A6A6), width: 1),
                                                    width: 90.w,
                                                    text: "Open",
                                                    backgroundColor: Color(0xffDDDDDD),
                                                    textColor: AppColors.primary,
                                                    fontSize: 19.sp,
                                                    onPressed: () {
                                                      Get.back();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 20.h),
                                            Text(
                                              "20 AED",
                                              style: jost700(22.sp, AppColors.primary),
                                            )
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomElevatedButton(
                                              width: 101.w,
                                              text: "Pay",
                                              backgroundColor: AppColors.primary,
                                              textColor: AppColors.secondary,
                                              fontSize: 19.sp,
                                              onPressed: () {
                                                Get.back();
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: true, // Allows dialog dismissal on outside tap
                                                  builder: (BuildContext context) {
                                                    return AlertDialog(
                                                      backgroundColor: AppColors.secondary,
                                                      title: Center(
                                                        child: Text(
                                                          "Leave a Review",
                                                          style: jost700(18.sp, AppColors.primary),
                                                        ),
                                                      ),
                                                      content: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            width: double.infinity,
                                                            height: 55.h,
                                                            decoration: BoxDecoration(
                                                              color: AppColors.primary,
                                                              borderRadius: BorderRadius.circular(22.r),
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Row(
                                                                  children: List.generate(
                                                                    5,
                                                                        (index) => Padding(
                                                                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                                                                      child: Icon(
                                                                        index < 4
                                                                            ? Icons.star
                                                                            : Icons.star_border,
                                                                        color: AppColors.goldenstar,
                                                                        size: 20.w,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '4 out of 5',
                                                                  style: jost500(9.sp, AppColors.buttontext),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(height: 16.h),
                                                          CustomInputField(
                                                            hintText: 'Write your comments',
                                                            maxLines: 4,
                                                            controller: description,
                                                          ),
                                                        ],
                                                      ),
                                                      actions: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            CustomElevatedButton(
                                                              width: 101.w,
                                                              text: "Done",
                                                              backgroundColor: AppColors.primary,
                                                              textColor: AppColors.secondary,
                                                              fontSize: 19.sp,
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                            ),
                                                            SizedBox(width: 10.w),
                                                            CustomElevatedButton(
                                                              borderSide: BorderSide(color: Color(0xffA6A6A6), width: 1),
                                                              width: 101.w,
                                                              text: "Cancel",
                                                              backgroundColor: Color(0xffDDDDDD),
                                                              textColor: AppColors.primary,
                                                              fontSize: 19.sp,
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            SizedBox(width: 10.w),
                                            CustomElevatedButton(
                                              borderSide: BorderSide(color: Color(0xffA6A6A6), width: 1),
                                              width: 101.w,
                                              text: "Cancel",
                                              backgroundColor: Color(0xffDDDDDD),
                                              textColor: AppColors.primary,
                                              fontSize: 19.sp,
                                              onPressed: () {
                                                Get.back();
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: 98.w,
                              height: 35.h,
                              margin: EdgeInsets.only(left: 16.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.w),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View",
                                style: jost600(13.sp, AppColors.primary),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    /// Video Player
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 14.w,
                      ),
                      alignment: Alignment.center,
                      height: 160.h,
                      // width: 328.w,
                      decoration: BoxDecoration(
                        color: Colors
                            .black, // Add a background color to make the border radius more visible
                        borderRadius: BorderRadius.circular(
                            20), // Add circular border radius
                      ),

                      clipBehavior: Clip
                          .hardEdge, // To clip the child within the rounded border
                      child: VideoPlayer(
                        videoUrl:
                            'assets/video/videotest.mp4', // Provide your video URL directly here
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                      ),
                      child: AudioNote(),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(NewTaskHome());
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Chat",
                                  style: jost600(13.sp, AppColors.primary),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.w),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Open Maps",
                                style: jost600(13.sp, AppColors.primary),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              decoration: BoxDecoration(
                                color: AppColors.buttonLightGrey,
                                borderRadius: BorderRadius.circular(8.w),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Reschedule",
                                style: jost600(13.sp, AppColors.secondary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                      width: 160.w,
                      height: 51.h,
                      text: "Mark as done",
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.secondary,
                      fontSize: 19.sp,
                      onPressed: () {
                        Get.to(NewTaskHome());
                      },
                    ),
                    CustomElevatedButton(
                      width: 160.w,
                      height: 51.h,

                      text: "Cancel",
                      backgroundColor: AppColors.buttonGrey,
                      textColor: AppColors.primary,
                      borderSide:
                          BorderSide(width: 0, color: Colors.transparent),
                      fontSize: 19.sp,
                      onPressed: () {
                     CancelDialogBox();
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
