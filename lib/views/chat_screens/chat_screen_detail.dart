import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/app_bars.dart';

class ChatScreenDetail extends StatelessWidget {
  const ChatScreenDetail ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  MyAppBar(
        isMenu: false,
        isNotification: true,
        isTitle: true,
        title: 'Profile',
        isSecondIcon: false,
      ),
      backgroundColor: AppColors.secondary,
      body:
      /// Chat Field
      GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus(); // Dismiss the keyboard
        },
        child: Column(
          children: [
            SizedBox(height: 61.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  // Support Message
                  _buildSupportMessage(
                    'Alright.\n\nYou can track your progress by accessing the "My Courses" or "My Progress" section in the app.\n\nIt will show you the courses you’re enrolled in, your completion status, and any assessments or quizzes you’ve completed.',
                  ),
                  // User Message
                  _buildUserMessage("That's good to know."),
                  // User Message
                  _buildUserMessage(
                      "Thank you so much for your help! I appreciate it."),
                  // Support Message
                  _buildSupportMessage(
                    "You’re very welcome!\n\nIf you have any more questions in the future or need assistance with anything else, feel free to reach out.",
                  ),
                  _buildSupportMessage('Happy studying!'),
                ],
              ),
            ),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }
  /// Support Team Text Field Design
  Widget _buildSupportMessage(String message) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            backgroundColor: Color.fromRGBO(0, 26, 46, 1),
            child: Image.asset(AppImages.saraprofile),
        ),
        SizedBox(width: 10.w),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.primary, // Support bubble color
              borderRadius: BorderRadius.circular(5.69.r),
            ),
            child: Text(
              message,
              style: jost400(
                  13.27.sp,
                AppColors.buttontext,
              ),
            ),
          ),
        ),
      ],
    );
  }
  /// User Text Message Field Design
  Widget _buildUserMessage(String message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 220.w, // Limit the message bubble width to 220
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.textFieldGrey, // User bubble color
              borderRadius: BorderRadius.circular(5.69.r),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 13.27.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
  /// Type Message TextField
  Widget _buildMessageInput() {
    return Container(
      height: 79.8.h,
      width: double.infinity.w,
      color: AppColors.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.4.w),
        child: SizedBox(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 56.63.h, // Height for the container
                  width: double.infinity, // Set to your desired width
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type message...',
                      hintStyle: TextStyle(color: Color.fromRGBO(100, 100, 100, 1)),
                      filled: true,
                      fillColor: AppColors.secondary,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h), // Adjust vertical padding
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide.none,
                      ),
                      isDense: true, // Set isDense to true
                    ),
                    style: TextStyle(color: AppColors.primary),
                  ),
                ),
              ),
              SizedBox(width: 11.52.w),
              Container(
                height: 38.4.h,
                width: 38.4.w,
                decoration: BoxDecoration(
                    color: AppColors.secondary, // Send button color
                    shape: BoxShape.circle,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (){},
                    child: SizedBox(
                      height: 23.04.h,
                      width: 23.04.w,
                      child: Image.asset(AppImages.sendicon,fit: BoxFit.contain,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
