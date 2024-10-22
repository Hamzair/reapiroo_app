import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/views/profile_screens/edit_profile_screen.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/drop_down_widget.dart';
import 'package:repairoo/widgets/profile_button_widget.dart';
import 'dart:io';
import '../../widgets/custom_input_fields.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<ProfileScreen> {
  String? _imagePath; // Store the image path

  // Controllers for the text fields
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  void dispose() {
    // Dispose the controllers when the widget is disposed to free resources
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside
      },
      child: Scaffold(
        appBar:  MyAppBar(
          isMenu: true,
          isNotification: true,
          isTitle: true,
          title: 'Profile',
          isSecondIcon: false,
        ),
        backgroundColor: AppColors.secondary,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 44.h),
              /// Profile Image
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 138.w,
                  child: SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: CircleAvatar(
                      backgroundImage: _imagePath != null
                          ? FileImage(File(_imagePath!))
                          : AssetImage(AppImages.profileImage) as ImageProvider, // Use the image from AppImages
                      radius: 60, // Optional: customize radius if needed
                    ),

                  ),
                ),
              ),
              Text("Merrill Kervin",
              style: jost700(23.1.sp, AppColors.primary),
              ),
              SizedBox(height: 30.h),
              /// My Profile
              ProfileButton(
                onPressed: () {
                  // Navigate to the EditProfileScreen
                  Get.to(EditProfileScreen());
                },
                label: "My Profile",
                iconPath: AppImages.name_icon,
              ),
              SizedBox(height: 20.h),
              /// My Listed Services
              ProfileButton(
                onPressed: () {
                  // Navigate to the SettingsScreen
                },
                label: "My Listed Services",
                iconPath: AppImages.bagicon,
              ),
              SizedBox(height: 20.h),
              /// Terms of service
              ProfileButton(
                onPressed: () {
                  // Navigate to the SettingsScreen
                },
                label: "Terms of service",
                iconPath: AppImages.hearticon,
              ),
              SizedBox(height: 20.h),
              /// Privacy Policy
              ProfileButton(
                onPressed: () {
                  // Navigate to the SettingsScreen
                },
                label: "Privacy Policy",
                iconPath: AppImages.privacyicon,
              ),
              SizedBox(height: 20.h),
              /// elp & Support
              ProfileButton(
                onPressed: () {
                  // Navigate to the SettingsScreen
                },
                label: "Help & Support",
                iconPath: AppImages.questionicon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
