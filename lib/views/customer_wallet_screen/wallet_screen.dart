import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/app_bars.dart';

import '../../const/color.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        isTextField: false,
        isSecondIcon: false,
        title: "Wallet",
        onBackTap: () {
         Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                // alignment: Alignment.topLeft,
                children: [
                  Image.asset(AppImages.walletbg),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 19.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 20.h,),
                        Text(
                          'Available Balance',
                          style: jost600(14.87.sp, AppColors.primary),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text('79.00 AED ',
                            style: jost700(35.65.sp, AppColors.primary)),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 110,
                      right: 0.w,
                      left: 0.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                        width: 304.11.w,
                        // height: 61.15.h,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(12.4.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('Add Money',
                                    style: jost400(12.sp, Color(0xffE8E7E7))),
                              ],
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 22.h,
                                    width: 22.w,
                                    child: Image.asset(AppImages.history)),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('History',
                                    style: jost400(12.sp, Color(0xffE8E7E7))),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  width: 308.w,
                  // height: 61.15.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10.52.r)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 17.66.w,
                      ),
                      Text('Add New Card',
                          style: jost400(14.sp, Color(0xffE8E7E7))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Text('Transactions', style: jost600(26.35.sp, AppColors.primary)),
              SizedBox(
                height: 13.h,
              ),
              Text('Today', style: jost400(13.17.sp, AppColors.primary)),
              SizedBox(
                height: 21.h,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.arrow_down),
                        scale: 4,
                      )),
                ),
                title: Text(
                  'Credit',
                  style: jost400(13.17, AppColors.primary),
                ),
                subtitle: Text('From Starbucks',
                    style: jost400(12.17, AppColors.buttonGrey)),
                trailing:
                    Text('\$ 3,110', style: jost500(14.17, AppColors.primary)),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.arrow_down),
                        scale: 4,
                      )),
                ),
                title: Text(
                  'Credit',
                  style: jost400(13.17, AppColors.primary),
                ),
                subtitle: Text('From Starbucks',
                    style: jost400(12.17, AppColors.buttonGrey)),
                trailing:
                    Text('\$ 3,110', style: jost500(14.17, AppColors.primary)),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text('Yesterday', style: jost400(13.17.sp, AppColors.primary)),
              SizedBox(
                height: 21.h,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImages.arrow_down),
                        scale: 4,
                      )),
                ),
                title: Text(
                  'Transfer',
                  style: jost400(13.17, AppColors.primary),
                ),
                subtitle: Text('From Starbucks',
                    style: jost400(12.17, AppColors.buttonGrey)),
                trailing:
                    Text('\$ 3,110', style: jost500(14.17, AppColors.primary)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
