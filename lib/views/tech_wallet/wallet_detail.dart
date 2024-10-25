import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';

import '../../const/color.dart';
import '../../widgets/app_bars.dart';

class WalletDetail extends StatelessWidget {
  const WalletDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        title: 'Wallet',
        isSecondIcon: false,
        onBackTap: (){
          Get.back();
        },
      ),
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.0.w),
          child: Column(
            children: [
              SizedBox(height: 24.h,),
              Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: AppColors.primary,width: 1),borderRadius:BorderRadius.circular(12.r) ),
                    height: 75.h,
                    width: 108.w,
                    child: Image.asset(AppImages.bank),
                  ),
                  SizedBox(width: 8.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('ADCB',style: jost600(14.sp, AppColors.primary)),

                      Text("Muhammad Ali",style: jost600(19.sp, AppColors.primary),),

                      Text("AE07 0331 2345 6789 0123 456",style: jost600(12.sp, AppColors.primary),),

                      Text("1234567890123456",style: jost600(12.sp, AppColors.primary),),


                    ],
                  ),
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(13.r),),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(AppImages.editicon),
                    ),
                  )

                ],
              ),
              SizedBox(height: 18.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 14.h),
                // height: 101.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12.r)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      children: [
                        Text("Total",style: jost600(14.sp, AppColors.secondary),),
                        Text("79.00",style: jost700(18.sp, AppColors.secondary),),
                        Text("AED",style: jost600(14.sp, AppColors.secondary),),
                      ],
                    ),
                    Container(
                      width: 2.w,
                      height: 101.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF000000), // Black color at the start
                            Color(0xFFFFFFFF), // White color in the middle
                            Color(0xFF000000), // Black color at the end
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.505, 1.0],
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        Text("Pending",style: jost600(14.sp, AppColors.secondary),),
                        Text("79.00",style: jost700(18.sp, AppColors.secondary),),
                        Text("AED",style: jost600(14.sp, AppColors.secondary),),
                      ],
                    ),
                    Container(
                      width: 2.w,
                      height: 101.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF000000), // Black color at the start
                            Color(0xFFFFFFFF), // White color in the middle
                            Color(0xFF000000), // Black color at the end
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.505, 1.0],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Available",style: jost600(14.sp, AppColors.secondary),),
                        Text("79.00",style: jost700(18.sp, AppColors.secondary),),
                        Text("AED",style: jost600(14.sp, AppColors.secondary),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Text("- Withdrawals will be made Twice a week on Monday and Thursday- Total Balance : Net Balance after deducting our fees 10% from each order.- Note: Amount is being held for 7 days to make sure everything works smooth for both tech and user.",style:jost400(11.sp, AppColors.primary) ,),
              SizedBox(height: 14.h,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 11.h,horizontal: 20.w),
                // height: 61.h,
                width: 304.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12.4.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        Image.asset(AppImages.withdraw,scale:3,),
                        SizedBox(height: 4.h,),
                        Text("Withdraw",style: jost400(12.sp, AppColors.secondary),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(AppImages.history,scale:3,),
                        SizedBox(height: 4.h,),

                        Text("History",style: jost400(12.sp, AppColors.secondary),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h,),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Transactions",style: jost600(26.sp, AppColors.primary),)),
              SizedBox(height: 13.h,),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Today",style: jost400(13.sp, AppColors.primary),)),
              SizedBox(height: 25.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
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
                      SizedBox(width: 23.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Credit",style: jost400(13.sp, AppColors.primary),), Text("From Starbucks",style:jost400(12.sp,AppColors.primary ) ,)],
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 37.0.w),
                    child: Text("\$ 3,110",style: jost500(14.sp, AppColors.primary),),
                  ),
                ],
              ),
              SizedBox(height: 35.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.arrow_right),
                              scale: 4,
                            )),
                      ),
                      SizedBox(width: 23.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Transfer",style: jost400(13.sp, AppColors.primary),), Text("To Starbucks",style:jost400(12.sp,AppColors.primary ) ,)],
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 37.0.w),
                    child: Text("\$ 1,500",style: jost500(14.sp, AppColors.primary),),
                  ),
                ],
              ),
              SizedBox(height: 21.h,),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Yesterday",style: jost400(13.sp, AppColors.primary),)),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.arrow_right),
                              scale: 4,
                            )),
                      ),
                      SizedBox(width: 23.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Transfer",style: jost400(13.sp, AppColors.primary),), Text("To Starbucks",style:jost400(12.sp,AppColors.primary ) ,)],
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 37.0.w),
                    child: Text("\$ 3,110",style: jost500(14.sp, AppColors.primary),),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),
    );
  }
}