import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/controllers/nav_bar_controller.dart';
import 'package:repairoo/views/notification_screen/notification_screen.dart';
import 'package:repairoo/widgets/app_bars.dart';

import '../../const/color.dart';
import '../../const/svg_icons.dart';
import '../booking_screens/today_screen_widgets/today_screen_booking_card.dart';
import '../tech_wallet/wallet_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bookingData = [
      {
        'name': 'Jared Hughs',
        'location': 'Downtown Road, Dubai.',
        'description':
        'I need to have my outdoor pipes fixed.\nWe have a huge leakage in the valves\nand the wall fittings.',
        'date': 'Mon, Dec 23',
        'time': '12:00',
        'image': AppImages.saraprofile, // Replace with your image path
      },
      {
        'name': 'Michael Scott',
        'location': 'Central Street, Abu Dhabi.',
        'description':
        'The indoor heating system is malfunctioning.\nNeed help to fix the furnace ASAP.',
        'date': 'Wed, Jan 02',
        'time': '14:30',
        'image': AppImages.profileImage, // Replace with your image path
      },


    ];
    final NavBarController navBarController = Get.find<NavBarController>();

    return  Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        onNotificationTap: () {
          Get.to(NotificationScreen());
        },
        onMenuTap: () {
          navBarController.openDrawer(context);
        },
        isMenu: true,
        isNotification: true,
        isTitle: true,
        isSecondIcon: false,
        title: 'Order Screen',
        secondIcon: AppSvgs.white_wallet,
        onSecondTap: () {
          Get.to(Wallet());
        },
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: bookingData.length,
          itemBuilder: (context, index) {
            final booking = bookingData[index];
            return Padding(
              padding: EdgeInsets.only(bottom: index != bookingData.length - 1 ? 12.h : 0),
              child: BookingCard(
                name: booking['name']!,
                location: booking['location']!,
                description: booking['description']!,
                date: booking['date']!,
                time: booking['time']!,
                imagePath: booking['image']!,
              ),
            );
          },
        ),
      ),

    );
  }
}
