import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';

import '../../const/color.dart';
import '../../widgets/app_bars.dart';

class Wallet extends StatelessWidget {

  Wallet({super.key});
  final TextEditingController wallet = TextEditingController();

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10.w ),
              height: 356.h,
              width: 322.w,
              decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 13.0.h),
                    child: Text('Add Bank Account',style: jost600(19.sp, AppColors.secondary),),
                  ),
                  SizedBox(height: 26.h,),
                  SizedBox(
                      height: 40.h,
                      child: CustomInputField(controller:wallet,hintText: "Bank Name", )),
                  SizedBox(height: 11.h,),
                  SizedBox(
                      height: 40.h,
                      child: CustomInputField(controller:wallet,hintText: "Full Name", )),
                  SizedBox(height: 11.h,),
                  SizedBox(
                      height: 40.h,
                      child: CustomInputField(controller:wallet,hintText: "IBAN", )),
                  SizedBox(height: 11.h,),
                  SizedBox(
                      height: 40.h,
                      child: CustomInputField(controller:wallet,hintText: "Account Number", )),
                  SizedBox(height: 26.h,),
                  Container(
                    height: 51.h,
                    width: double.infinity,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.r),color: AppColors.secondary),
                    child: Center(child: Text("Add",style: jost600(19.sp, AppColors.primary),)),
                  )

                ],
              ),
            ),
          )

        ],
      ) ,
    );
  }
}