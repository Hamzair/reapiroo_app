import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';

class BidBottomSheet extends StatelessWidget {
  const BidBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController bid = TextEditingController();
    bid.text = "Your offer";

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.w),
          topRight: Radius.circular(40.w),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 29.h,),
            Text("Bid", style: jost600(32.sp, AppColors.primary),),
            SizedBox(height: 20.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Enter your bid amount", style: jost600(16.sp, AppColors.primary),),
            ),
            SizedBox(height: 15.h,),
            CustomInputField(
                controller: bid,
                label: "",
                keyboardType: TextInputType.number,
            ),
            SizedBox(height: 21.h,),
            CustomElevatedButton(
                text: "Send Bid",
                fontSize: 16.sp,
                onPressed: (){},
            ),
            SizedBox(height: 29.h,),
          ],
        ),
      ),
    );
  }
}
