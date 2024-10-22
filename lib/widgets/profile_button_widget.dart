import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';

class ProfileButton extends StatefulWidget {
  final VoidCallback onPressed; // Required onPressed callback
  final String label; // Required label text
  final String iconPath; // Required icon path

  // Constructor with required parameters
  const ProfileButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.iconPath,
  }) : super(key: key);

  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  bool _isPressed = false; // State to track if button is pressed

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed; // Toggle the pressed state
        });
        widget.onPressed(); // Call the provided onPressed function
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent, // No background color initially
        padding: EdgeInsets.zero, // Remove default padding
        minimumSize: Size(double.infinity, 52.h), // Set height
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(13.31.r), // Border radius
        ),
      ).copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (_isPressed) {
              return AppColors.lightGrey; // Change to light grey when pressed
            }
            return Colors.transparent; // Default background is transparent
          },
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.iconPath, // Use the passed icon asset path
                  height: 17.54.h, // Set your desired height
                  width: 17.54.w, // Set your desired width
                ),
                SizedBox(width: 20.39.h),
                // Change the text color based on the pressed state
                Text(
                  widget.label, // Use the passed label text
                  style: jost500(
                    16.sp,
                    _isPressed ? Colors.black : Color.fromRGBO(81, 81, 81, 1), // Change color based on state
                  ),
                ),
              ],
            ),
            Image.asset(
              AppImages.arrowforward, // Use the image asset path
              height: 14.62.h, // Set your desired height
              width: 24.85.w, // Set your desired width
            ),
          ],
        ),
      ),
    );
  }
}
