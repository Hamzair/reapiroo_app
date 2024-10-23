import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/color.dart';
import '../../../const/images.dart';
import '../../../const/text_styles.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_input_fields.dart';

class CustomerSignup extends StatefulWidget {
  const CustomerSignup({super.key});

  @override
  State<CustomerSignup> createState() => _CustomerSignupState();
}

class _CustomerSignupState extends State<CustomerSignup> {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController email = TextEditingController();
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.onboardingelipse2),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  SizedBox(
                    height: 85.h,
                    width: 267.w,
                    child: Image.asset(
                      color: Colors.white,
                      AppImages.logo,
                    ),
                  ),
                  SizedBox(height: 98.h),
                  Text(
                    'Sign up',
                    style: jost700(35.sp, AppColors.secondary),
                  ),
                  SizedBox(height: 58.h),
                ],
              ),
            ),
            SizedBox(height: 48.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomInputField(
                label: 'Full name',
                controller: firstname,
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.primary,
                  size: 18.sp,
                ), // Add prefix icon here
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomInputField(
                label: 'Your email',
                controller: email,
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: AppColors.primary,
                  size: 18.sp,
                ), // Add prefix icon here
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.fill,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.lightGrey, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedGender,
                    hint: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        children: [
                          Image.asset(
                            AppImages.gender_icon,
                            height: 20,
                            width: 20,
                            color: Colors.black,
                          ),
                          Text('Gender',
                              style: jost400(14.65.sp, AppColors.primary)),
                        ],
                      ),
                    ),
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.gender_icon,
                                height: 20,
                                width: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 15.w,),
                              Text(value,
                                  style: jost400(14.65.sp, AppColors.primary)),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGender = newValue;
                      });
                    },
                    icon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomElevatedButton(
                // borderSide: BorderSide(color: Color(0xffBDD0EA),width: 1),
                text: 'Continue',
                textColor: AppColors.secondary,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return OtpAuthenticationView(); // Replace with your desired screen/widget
                  //     },
                  //   ),
                  // );
                },
                backgroundColor: AppColors.primary, // Custom background color
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By signing up you agree to our ',
                      style: jost400(14.sp, AppColors.primary),
                    ),
                    TextSpan(
                      text: 'Terms of Services',
                      style: jost700(14.sp, AppColors.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to Terms of Services
                          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => TermsPage()));
                        },
                    ),
                    TextSpan(
                      text: ' and ',
                      style: jost400(14.sp, AppColors.primary),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: jost700(14.sp, AppColors.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to Privacy Policy
                          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyPage()));
                        },
                    ),
                    TextSpan(
                      text: '.',
                      style: jost400(14.sp, AppColors.primary),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
