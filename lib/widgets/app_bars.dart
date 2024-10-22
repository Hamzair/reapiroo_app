import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/widgets/my_svg.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.isMenu,
    required this.isNotification,
    required this.isTitle,
    this.title,
    required this.isSecondIcon,
  });

  final bool isMenu;
  final bool isNotification;
  final bool isSecondIcon;
  final bool isTitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13.w, right: 19.w, bottom: 10.h, top: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(14.w),
          bottomRight: Radius.circular(14.w),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18), // Adjust opacity if needed
            offset: const Offset(0, 4), // (x = 0, y = 4)
            blurRadius: 10.4, // blur 10.4
            spreadRadius: 0, // spread 0
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MySvg(
            assetName: isMenu ? AppSvgs.menu : AppSvgs.back_button,
            height: 38.h,
            width: 38.w,
          ),
          if (isTitle == true)
            Expanded(
              child: Text(
                title ?? "",
                style: jost600(22.sp, AppColors.darkBlue),
              ),
            ),
          if (isNotification == true)
            Container(
              height: 38.h,
              width: 35.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(14.w),
              ),
              alignment: Alignment.center,
              child: MySvg(
                assetName: AppSvgs.notification,
                height: 23.h,
                width: 23.w,
              ),
            ),
        ],
      ),
    );
  }

  // To set a fixed size for the AppBar
  @override
  Size get preferredSize => Size.fromHeight(70.h); // Adjust height as needed
}
