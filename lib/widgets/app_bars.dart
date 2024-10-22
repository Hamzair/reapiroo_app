import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/widgets/my_svg.dart';

class AppBar extends StatefulWidget {
  const AppBar({super.key, required this.isMenu, required this.isNotification, required this.isTitle});

  final bool isMenu;
  final bool isNotification;
  final bool isTitle;

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          MySvg(assetName: widget.isMenu ? AppSvgs.menu : AppSvgs.back_button, height: 38.h, width: 38.w,),
        ],
      ),
    );
  }
}
