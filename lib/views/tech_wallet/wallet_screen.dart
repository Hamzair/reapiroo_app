import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/views/tech_wallet/wallet_detail.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';

import '../../const/color.dart';
import '../../widgets/app_bars.dart';

class Wallet extends StatefulWidget {
  Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final TextEditingController bankName = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController iban = TextEditingController();
  final TextEditingController acc_number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside

      },
      child: Scaffold(
        appBar: MyAppBar(
          isMenu: false,
          isNotification: false,
          isTitle: true,
          title: 'Wallet',
          isSecondIcon: false,
          onBackTap: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.secondary,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  // height: 356.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 13.0.h),
                          child: Text(
                            'Add Bank Account',
                            style: jost600(19.sp, AppColors.secondary),
                          ),
                        ),
                        SizedBox(
                          height: 26.h,
                        ),
                        SizedBox(
                            height: 50.h,
                            child: CustomInputField(
                              controller: bankName,
                              hintText: "Bank Name",
                            )),
                        SizedBox(
                          height: 11.h,
                        ),
                        SizedBox(
                            height: 50.h,
                            child: CustomInputField(
                              controller: name,
                              hintText: "Full Name",
                            )),
                        SizedBox(
                          height: 11.h,
                        ),
                        SizedBox(
                            height: 50.h,
                            child: CustomInputField(
                              controller: iban,
                              hintText: "IBAN",
                            )),
                        SizedBox(
                          height: 11.h,
                        ),
                        SizedBox(
                            height: 50.h,
                            child: CustomInputField(
                              controller: acc_number,
                              hintText: "Account Number",
                            )),
                        SizedBox(
                          height: 26.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(WalletDetail());
                          },
                          child: Container(
                            height: 51.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.r),
                                color: AppColors.secondary),
                            child: Center(
                                child: Text(
                              "Add",
                              style: jost600(19.sp, AppColors.primary),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
