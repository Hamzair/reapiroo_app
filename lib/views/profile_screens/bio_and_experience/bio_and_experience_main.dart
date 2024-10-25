import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/controllers/tech_controller.dart';
import 'package:repairoo/views/auth/signup_view/components/service_screen.dart';
import 'package:repairoo/widgets/app_bars.dart';
import '../../../const/color.dart';
import '../../../const/text_styles.dart';

class BioAndExperienceMain extends StatefulWidget {
  const BioAndExperienceMain({super.key});

  @override
  State<BioAndExperienceMain> createState() => _BioAndExperienceMainState(); // Corrected here
}

class _BioAndExperienceMainState extends State<BioAndExperienceMain> { // Use the correct state class name
  final TechController techController = Get.put(TechController());
  List<String> index = [
    "0",
    "1",
    "2",
    "3",
  ];

  List<String> name = [
    "Personal",
    "Services",
    "Details",
    "Documents",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside
      },
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: MyAppBar(
          isMenu: false,
          isNotification: false,
          isTitle: true,
          title: 'Bio and Experience',
          isSecondIcon: false,
          onBackTap: (){
            Get.back();
          },
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              /// Personal, Service, detail, documents Container
              Container(
                width: double.infinity,
                height: 35.h,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: index.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, val) {
                    return GestureDetector(
                      onTap: () {
                        techController.selectedIndex.value = index[val];
                      },
                      child: Obx(() {
                        return Container(
                          width: 83.w,
                          decoration: BoxDecoration(
                            color: techController.selectedIndex.value == index[val]
                                ? AppColors.secondary
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(7.58.r),
                            border: Border.all(
                              color: techController.selectedIndex.value == index[val]
                                  ? AppColors.skyBlue
                                  : Colors.transparent,
                              width: 0.41,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            name[val],
                            style: jost700(
                              10.sp,
                              techController.selectedIndex.value == index[val]
                                  ? AppColors.primary
                                  : AppColors.secondary,
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                child: Obx(() {
                  switch (techController.selectedIndex.value) {
                    case "0":
                      return
                        Text(
                          'Write a short bio about yourself',
                          style: jost600(15.17.sp, Color(0xff6B7280)),
                        );
                    case "1":
                      return ServicesScreen();
                    case "2":
                      return Text(
                  'Write a short bio about yourself',
                  style: jost600(15.17.sp, Color(0xff6B7280)),
                  );
                    case "3":
                      return Text(
                        'Write a short bio about yourself',
                        style: jost600(15.17.sp, Color(0xff6B7280)),
                      );
                    default:
                      return Center(child: Text('Select an option.'));
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
