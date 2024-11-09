import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/images.dart';
import 'package:url_launcher/url_launcher.dart';
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

  Future<void> _launchWhatsApp() async {
    final url = Uri.parse(
        'https://web.whatsapp.com/+923206754536?text=Hello,%20I%20need%20help%20with...');

    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        print('Could not launch WhatsApp');
      }
    } catch (e) {
      print('Error launching WhatsApp: $e');
    }
  }

  void _showApprovalDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // SizedBox(height: 30.h),

              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 50.sp,
              ),
              SizedBox(height: 16.h),
              Text(
                'Your request has been approved by admin',
                style: jost500(18.sp, Color(0xff1E1E1E)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                Text(
                  'Topic',
                  style: jost500(16.sp, Color(0xff1E1E1E)),
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: 'Enter Your Topic',
                  controller: topicController,
                ),
                SizedBox(height: 8.h),
                Text(
                  'Message',
                  style: jost500(16.sp, Color(0xff1E1E1E)),
                ),
                SizedBox(height: 8.h),
                CustomInputField(
                  hintText: 'Enter Your Message',
                  maxLines: 4,
                  controller: messageController,
                ),
                SizedBox(height: 30.h),
                CustomElevatedButton(
                  text: 'Continue',
                  textColor: AppColors.secondary,
                  onPressed: _showApprovalDialog, // Show dialog on button press
                  backgroundColor: AppColors.primary,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _launchWhatsApp,
          child: SizedBox(
              height: 40.h,
              width: 40.w,
              child: Image.asset(AppImages.whatsapp)),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
