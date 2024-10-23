import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/views/booking_screens/today_screen_content.dart'; // Ensure you have this file created with TodayContent
import 'package:repairoo/widgets/app_bars.dart';

class BookingScreenMain extends StatefulWidget {
  const BookingScreenMain({super.key});

  @override
  _BookingScreenMainState createState() => _BookingScreenMainState();
}

class _BookingScreenMainState extends State<BookingScreenMain> {
  String? selectedOption = 'Today'; // Default to "Today"

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        isMenu: true,
        isNotification: true,
        isTitle: true,
        isSecondIcon: false,
      ),
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bookings",
                  style: jost700(24.sp, AppColors.primary),
                ),
                // Dropdown Menu
                DropdownButton<String>(
                  value: selectedOption,
                  dropdownColor: AppColors.secondary, // Yellow background for dropdown items
                  hint: Row(
                    children: [
                      Text(
                        'Select',
                        style: jost700(14.sp, AppColors.primary),
                      ),
                    ],
                  ),
                  isExpanded: false,
                  underline: SizedBox(), // Remove the default underline
                  icon: SizedBox.shrink(), // Remove the default icon
                  items: [
                    DropdownMenuItem(
                      value: 'Today',
                      child: Text(
                        'Today',
                        style: jost700(14.sp, AppColors.primary),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'In Month',
                      child: Text(
                        'In Month',
                        style: jost700(14.sp, AppColors.primary),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'In Year',
                      child: Text(
                        'In Year',
                        style: jost700(14.sp, AppColors.primary),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value; // Update the selected option
                    });
                  },
                  // Custom rendering for the selected item to underline it
                  selectedItemBuilder: (BuildContext context) {
                    return ['Today', 'In Month', 'In Year'].map((String value) {
                      return Row(
                        children: [
                          Text(
                            value,
                            style: jost700(15.sp, AppColors.primary).copyWith(
                              decoration: value == selectedOption ? TextDecoration.underline : TextDecoration.none,
                              decorationColor: Colors.black, // Black underline
                              decorationThickness: 2.0, // Thickness of underline
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AppColors.primary,size: 25,
                          ),
                        ],
                      );
                    }).toList();
                  },
                )
              ],
            ),
            SizedBox(height: 20.h), // Spacing below the row
            Expanded(
              child: _getBodyContent(selectedOption), // Update to call the widget directly
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBodyContent(String? option) {
    // Returns the body content based on the selected option
    switch (option) {
      case 'Today':
        return TodayContent(); // Ensure this returns a Widget
      case 'In Month':
        return Center(
          child: Text(
            'Displaying bookings for the upcoming month.',
            style: jost400(18.sp, AppColors.primary),
          ),
        );
      case 'In Year':
        return Center(
          child: Text(
            'Displaying bookings for the upcoming year.',
            style: jost400(18.sp, AppColors.primary),
          ),
        );
      default:
        return Center(
          child: Text(
            'Please select an option.',
            style: jost400(18.sp, AppColors.primary),
          ),
        );
    }
  }
}
