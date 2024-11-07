import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  TextEditingController topicController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();

      },
      child: Scaffold(
          backgroundColor: AppColors.secondary,
          appBar: MyAppBar(
            isMenu: false,
            isNotification: false,
            isTitle: true,
            isSecondIcon: false,
            title: 'Help & Support',
            onBackTap: () {
              Get.back();
            },
          ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Topic',style: jost500(16.sp, Color(0xff1E1E1E)),),

                SizedBox(
                  height: 8.h,
                ),
                CustomInputField(
                  hintText: 'Enter Your Topic',
                  controller: topicController,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text('Message',style: jost500(16.sp, Color(0xff1E1E1E)),),
                SizedBox(
                  height: 8.h,
                ),
                CustomInputField(
                hintText: 'Enter Your Message',
                  maxLines: 4,
                  controller: messageController,
                   // Add prefix icon here
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomElevatedButton(
                  // borderSide: BorderSide(color: Color(0xffBDD0EA),width: 1),
                  text: 'Continue',
                  textColor: AppColors.secondary,
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return AppNavBar(); // Replace with your desired screen/widget
                    //     },
                    //   ),
                    // );
                  },
                  backgroundColor: AppColors.primary, // Custom background color
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
