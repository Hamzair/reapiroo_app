import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/views/home_screens_for_customers/components/services_container.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_button.dart';

class CustomerMainHome extends StatefulWidget {
  const CustomerMainHome({super.key});

  @override
  State<CustomerMainHome> createState() => _CustomerMainHomeState();
}

class _CustomerMainHomeState extends State<CustomerMainHome> {

  final HomeController customerVM = Get.find<HomeController>();


  List<Map<String, dynamic>> dummy = [
    {
      "image": AppImages.house_cleaning,
      "title": "House Cleaning",
    },
    {
      "image": AppImages.tv_mounting,
      "title": "TV Mounting",

    },
    {
      "image": AppImages.gardening,
      "title": "Gardening",
    },
    {
      "image":AppImages.plumbing,
      "title": "Plumbing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          isMenu: true,
          isNotification: true,
          isTitle: false,
          isTextField: true,
          isSecondIcon: false,
          title: "",
        ),
        backgroundColor: AppColors.secondary,
        body: SafeArea(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.5.w),
          child: Column(
            children: [
              SizedBox(height: 6.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Services", style: jost700(16.sp, AppColors.primary),),
                  CustomElevatedButton(
                    width: 72.w,
                      height: 24.h,
                      text: "View",
                      onPressed: (){},
                      fontSize: 12.sp,
                    borderRadius: 8.r,
                  ),
                ],
              ),
              MasonryGridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2, // Number of items in a row
                mainAxisSpacing: 20.w, // Vertical spacing between items
                crossAxisSpacing: 20.w, // Horizontal spacing between items
                itemCount: dummy.length, // Number of items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      customerVM.isHome.value = "customer task";
                      customerVM.service.value =  dummy[index]["title"];
                    },
                    child: ServicesContainer(
                      image: dummy[index]["image"],
                      title: dummy[index]["title"],
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
  }
}
