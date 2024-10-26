import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/controllers/user_controller.dart';
import 'package:repairoo/views/home_screen_for_tech/components/announcement_containers.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_box.dart';
import 'package:repairoo/widgets/my_svg.dart';

import '../tech_wallet/wallet_screen.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final TechHomeController homeVM = Get.find<TechHomeController>();
  final UserController userVM = Get.find<UserController>();

  List<Map<String, dynamic>> dummy = [
    {
      "image": AppSvgs.today_appointment,
      "title": "Today Appointments",
      "value": '3'
    },
    {
      "image": AppSvgs.happy_customers,
      "title": "Happy Customers",
      "value": '2000'
    },
    {
      "image": AppSvgs.jobs_completed,
      "title": "Jobs Completed",
      "value": '170'
    },
    {"image": AppSvgs.total_earned, "title": "Total Earned", "value": '\$400'},
  ];

  List<String> string = ["announcement", "offer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: true,
        isNotification: true,
        isTitle: false,
        isSecondIcon: true,
        title: '',
        secondIcon: AppSvgs.white_wallet,
        onSecondTap: () {
          Get.to(Wallet());
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
                Container(
                  height: 99.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.w),
                      image: DecorationImage(
                          image: AssetImage(AppImages.home_ad),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 6.h),
                  decoration: BoxDecoration(
                      color: AppColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(12.w),
                      border: Border.all(width: 1, color: AppColors.lightGrey)),
                  child: ListView.builder(
                      itemCount: string.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: index != 0 ? 8.w : 0),
                          child: AnnouncementContainers(
                            type: string[index],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 90.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.textFieldGrey,
                      borderRadius: BorderRadius.circular(12.w),
                      border: Border.all(width: 1, color: AppColors.lightGrey)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppImages.wallet,
                                  width: 21.w,
                                  height: 17.h,
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  "Balance",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Text(
                              "79.00 AED",
                              style: GoogleFonts.inter(
                                  fontSize: 20.sp,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.w,
                        height: 88.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFE2E2E2), // #E2E2E2
                              Color(0xFF525252), // #525252
                              Color(0xFFE2E2E2), // #E2E2E2
                            ],
                            stops: [
                              0.0, // at 0%
                              0.485, // at 48.5%
                              1.0, // at 100%
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Availability ",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            SizedBox(
                              height: 30,
                              child: Obx(
                                () => Switch(
                                  value: userVM.availability.value,
                                  onChanged: (val) {
                                    userVM.availability.value = val;
                                  },
                                  activeColor: AppColors.switchGreen,
                                  activeTrackColor:
                                      AppColors.switchGreen.withOpacity(.30),
                                  inactiveThumbColor: Colors.grey,
                                  inactiveTrackColor: Colors.grey.shade300,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Plumbing",
                            style: jost400(12.sp, AppColors.secondary),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 25.w,
                            color: AppColors.secondary,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Nearest",
                            style: jost400(12.sp, AppColors.secondary),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 25.w,
                            color: AppColors.secondary,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
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
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20.w,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 2,
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
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            height: 82.h,
                            width: 92.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.w),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.jared_hughs),
                                    fit: BoxFit.contain)),
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
                          Container(
                            height: 35.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                            ),
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
                                  width: 45.w,
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
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                homeVM.updateAppBar(false, true, false, false,
                                    "Task Description");
                                homeVM.isHome.value = "task";
                              },
                              child: Container(
                                height: 35.h,
                                //  padding: EdgeInsets.symmetric(vertical: 12.h),
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
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    )
                  ]),
                ),
                SizedBox(
                  height: 18.h,
                ),
                // MasonryGridView.count(
                //   shrinkWrap: true,
                //   padding: EdgeInsets.zero,
                //   physics: NeverScrollableScrollPhysics(),
                //   crossAxisCount: 2, // Number of items in a row
                //   mainAxisSpacing: 20.w, // Vertical spacing between items
                //   crossAxisSpacing: 20.w, // Horizontal spacing between items
                //   itemCount: dummy.length, // Number of items
                //   itemBuilder: (context, index) {
                //     return CustomBox(
                //       image: dummy[index]["image"],
                //       title: dummy[index]["title"],
                //       value: dummy[index]["value"],
                //     );
                //   },
                // ),

                // Wrap(
                // spacing: 8.0,
                // runSpacing: 8.0,
                // children: List.generate(role.length, (index) {}
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
