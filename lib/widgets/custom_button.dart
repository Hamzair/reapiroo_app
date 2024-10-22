import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomElevatedButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.31.r), // Border radius
        ),
        minimumSize: Size(double.infinity, 51.h), // Width and height
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.buttontext, // Text color
          fontSize: 16.sp, // Text size
        ),
      ),
    );
  }
}
