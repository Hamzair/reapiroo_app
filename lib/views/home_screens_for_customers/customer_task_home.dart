import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/svg_icons.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/controllers/home_controller.dart';
import 'package:repairoo/widgets/app_bars.dart';
import 'package:repairoo/widgets/custom_button.dart';
import 'package:repairoo/widgets/custom_input_fields.dart';
import 'package:repairoo/widgets/my_svg.dart';

class CustomerTaskHome extends StatefulWidget {
  const CustomerTaskHome({super.key, this.service});

  final String? service;

  @override
  State<CustomerTaskHome> createState() => _CustomerTaskHomeState();
}

class _CustomerTaskHomeState extends State<CustomerTaskHome> {
  final HomeController customerVM = Get.find<HomeController>();

  final TextEditingController task = TextEditingController();
  Future<DateTime?> showDateTimePicker({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    ThemeData? theme, // Optional theme parameter
  }) async {
    initialDate ??= DateTime.now();
    firstDate ??= initialDate.subtract(const Duration(days: 365 * 100));
    lastDate ??= firstDate.add(const Duration(days: 365 * 200));

    // Show time picker first with theme
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialDate),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.black, // Background color
            colorScheme: ColorScheme.light(
              primary: Colors.black,
              onPrimary: Colors.white, // Time color
              secondary: Colors.black, // AM/PM color
              onSecondary: Colors.white, // Button text color
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.normal, // Button text color
            ),
          ), // Apply provided theme or default
          child: child ?? SizedBox(),
        );
      },
    );

    // If no time is selected, return null
    if (selectedTime == null) {
      return null; // User did not pick a time
    }

    // Show date picker after time picker with theme
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.black, // Background color
            colorScheme: ColorScheme.light(
              primary: Colors.black,
              onPrimary: Colors.white, // Time color
              secondary: Colors.black, // AM/PM color
              onSecondary: Colors.white, // Button text color
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.normal, // Button text color
            ),
          ), // Apply provided theme or default
          child: child ?? SizedBox(),
        );
      },
    );

    // If no date is selected, return time with default date
    if (selectedDate == null) {
      return DateTime(
        initialDate.year,
        initialDate.month,
        initialDate.day,
        selectedTime.hour,
        selectedTime.minute,
      ); // Use initialDate if date is not picked
    }

    // Combine date and time
    return DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime.hour,
      selectedTime.minute,
    );
  }

  Future<void> _selectTime(BuildContext context, bool isCheckIn) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.black, // Background color
            colorScheme: ColorScheme.light(
              primary: Colors.black,
              onPrimary: Colors.white, // Time color
              secondary: Colors.black, // AM/PM color
              onSecondary: Colors.white, // Button text color
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.normal, // Button text color
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      DateTime now = DateTime.now();
      DateTime finalDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        pickedTime.hour,
        pickedTime.minute,
      );

      // If valid, update the corresponding check-in or check-out time
      setState(() {
        String formattedTime =
            '${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}';
        // Perform your operations with formattedTime here
      });
    }
  }

// To open calendar at the top, you can create a custom date picker if necessary
  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            primaryColor: Colors.black,
            colorScheme: ColorScheme.dark(
              primary: Colors.black,
              onPrimary: Colors.white,
              secondary: Colors.white,
              onSecondary: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      // Handle the selected date here
      setState(() {
        // Update your state with the selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        isTextField: false,
        isSecondIcon: false,
        title: "Task Description",
        onBackTap: () {
          customerVM.isHome.value = "customer main";
        },
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.service ?? "",
              style: jost700(24.sp, AppColors.primary),
            ),
            SizedBox(
              height: 13.w,
            ),
            Container(
              height: 55.h,
              margin: EdgeInsets.only(bottom: 6.h),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(color: Color(0xffE2E2E2), width: 1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upload Picture/Video"),
                  Container(
                    height: 30.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8.w)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MySvg(
                          assetName: AppSvgs.upload,
                          width: 18.w,
                          height: 18.h,
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          "Upload    ",
                          style: sora600(10.sp, AppColors.secondary),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 55.h,
              margin: EdgeInsets.only(bottom: 6.h),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(color: Color(0xffE2E2E2), width: 1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select location"),
                  Container(
                    height: 30.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8.w)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MySvg(
                          assetName: AppSvgs.location,
                          width: 15.w,
                          height: 15.h,
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          "Select on Maps",
                          style: sora600(10.sp, AppColors.secondary),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 55.h,
              margin: EdgeInsets.only(bottom: 6.h),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(color: Color(0xffE2E2E2), width: 1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Time"),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => showDateTimePicker(context: context),
                        child: Container(
                          width: 73.w,
                          height: 30.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 6.h),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8.w)),
                          alignment: Alignment.center,
                          child: Text(
                            "Now",
                            style: sora600(10.sp, AppColors.secondary),
                          ),
                        ),
                      ),
                      Container(
                        width: 73.w,
                        height: 30.h,
                        margin: EdgeInsets.only(left: 8.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 6.h),
                        decoration: BoxDecoration(
                            color: AppColors.buttonGrey,
                            borderRadius: BorderRadius.circular(8.w)),
                        alignment: Alignment.center,
                        child: Text(
                          "Later",
                          style: sora600(10.sp, AppColors.secondary),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 55.h,
              margin: EdgeInsets.only(bottom: 6.h),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                border: Border.all(color: Color(0xffE2E2E2), width: 1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Record Voice Note"),
                  Container(
                    // height: 40.h,
                    // width: 40.w,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4.w, color: Colors.black)),
                    child: CircleAvatar(
                      radius: 10.w,
                      backgroundColor: AppColors.primary,
                    ),
                  )
                ],
              ),
            ),
            Obx(
              () => Container(
                height:
                    customerVM.uploadSpareParts.value == true ? 108.h : 55.h,
                margin: EdgeInsets.only(bottom: 6.h),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  border: Border.all(color: Color(0xffE2E2E2), width: 1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Do you need spare parts?"),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                customerVM.uploadSpareParts.value = true;
                              },
                              child: Container(
                                width: 52.w,
                                height: 30.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                    color: AppColors.buttonGrey,
                                    borderRadius: BorderRadius.circular(8.w)),
                                alignment: Alignment.center,
                                child: Text(
                                  "Yes",
                                  style: sora600(10.sp, AppColors.secondary),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                customerVM.uploadSpareParts.value = false;
                              },
                              child: Container(
                                width: 52.w,
                                height: 30.h,
                                margin: EdgeInsets.only(left: 8.w),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(8.w)),
                                alignment: Alignment.center,
                                child: Text(
                                  "No",
                                  style: sora600(10.sp, AppColors.secondary),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (customerVM.uploadSpareParts.value == true)
                      SizedBox(
                        height: 17.h,
                      ),
                    if (customerVM.uploadSpareParts.value == true)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Upload Picture/Video"),
                          Container(
                            height: 30.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 6.h),
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(8.w)),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MySvg(
                                  assetName: AppSvgs.upload,
                                  width: 18.w,
                                  height: 18.h,
                                ),
                                SizedBox(
                                  width: 13.w,
                                ),
                                Text(
                                  "Upload    ",
                                  style: sora600(10.sp, AppColors.secondary),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
            CustomInputField(
              controller: task,
              label: "Describe your task",
            ),
            SizedBox(
              height: 72.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: CustomElevatedButton(
                text: "Next",
                onPressed: () {},
                fontSize: 19.sp,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
