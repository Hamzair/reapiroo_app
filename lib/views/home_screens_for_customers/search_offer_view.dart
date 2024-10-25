import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:repairoo/const/color.dart';
import 'package:repairoo/const/images.dart';
import 'package:repairoo/const/text_styles.dart';
import 'package:repairoo/views/home_screen_for_tech/components/bid_bottom_sheet.dart';
import 'package:repairoo/views/home_screens_for_customers/components/job_accepted_bottomsheet.dart';
import 'package:repairoo/widgets/app_bars.dart';

class SearchOfferView extends StatefulWidget {
  const SearchOfferView({super.key, required this.name, required this.image, required this.experience, required this.price, required this.rating, required this.reviews});

  final String image;
  final String name;
  final String experience;
  final String price;
  final String rating;
  final String reviews;

  @override
  State<SearchOfferView> createState() => _SearchOfferViewState();
}

class _SearchOfferViewState extends State<SearchOfferView> {

  String selectedRating = "5 stars"; // Default selection for dropdown

  // Mockup reviews data for each rating
  final Map<String, List<Map<String, String>>> reviewsData = {
    "5 stars": [
      {
        "name": "Ryosuke Tanaka",
        "date": "August 5, 2023",
        "comment": "Natalie offers an impressive array of features and resources, making it a truly awesome tool for learning, fantastic choice for anyone looking to enhance their learning journey.",
      },
      {
        "name": "John Doe",
        "date": "July 12, 2023",
        "comment": "Amazing platform with great learning tools!",
      },
    ],
    "4 stars": [
      {
        "name": "Jane Smith",
        "date": "June 18, 2023",
        "comment": "Very good but could use more variety in resources.",
      },
    ],
    "3 stars": [
      {
        "name": "Alex Johnson",
        "date": "May 3, 2023",
        "comment": "Decent platform but I faced some technical issues.",
      },
    ],
    "2 stars": [
      {
        "name": "Lily Brown",
        "date": "April 20, 2023",
        "comment": "Not as expected. Needs improvement.",
      },
    ],
    "1 star": [
      {
        "name": "Samuel Green",
        "date": "March 11, 2023",
        "comment": "Poor experience. Wouldn't recommend.",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.secondary,
      appBar: MyAppBar(
        isMenu: false,
        isNotification: false,
        isTitle: true,
        isSecondIcon: false,
        isTextField: false,
        title: widget.name,
        onBackTap: (){
          Get.back();
        },
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.0.w),
          child: Column(
            children: [
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Container(
                    width: 90.w,
                    height: 76.h,
                    margin: EdgeInsets.only(right: 9.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.fill)
                    ),
                  ),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.name, style: jost600(16.sp, AppColors.primary),),
                          SizedBox(
                            child: Row(
                              children: [
                                Image.asset(AppImages.star, height: 18.h, width: 18.w),
                                SizedBox(width: 4.w,),
                                Text(widget.rating, style: jost600(14.sp, Colors.white),),
                                SizedBox(width: 3.w,),
                                Text("(${widget.reviews})", style: jost(13.sp, AppColors.lightGrey, FontWeight.w300),),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3.h,),
                      Text(widget.experience, style: jost500(10.sp, AppColors.primary),),
                      SizedBox(height: 3.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(text: TextSpan(
                              children: [
                                TextSpan(text: widget.price, style: jost600(24.sp, AppColors.primary)),
                                TextSpan(text: "AED",style: jost(13.sp, AppColors.primary, FontWeight.w300))
                              ]
                          )),
          
                        ],
                      ),
          
                    ],
                  ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 28.h, bottom: 21.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                            (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Icon(
                            index < 4
                                ? FontAwesomeIcons.solidStar  // Example: solid star icon
                                : FontAwesomeIcons.star, // Show empty star for 4 out of 5 rating
                            color: AppColors.goldenstar,
                            size: 30.w,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '4 out of 5',
                          style: jost500(
                            14.sp,
                            AppColors.buttontext,
                          ),
                        ),
                        Text(
                          '15 reviews',
                          style: jost500(
                            14.sp,
                            AppColors.buttontext,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                                children: reviewsData[selectedRating]!.map((review) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 15.h),
                                    padding: EdgeInsets.all(12.w),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.r),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 8,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20.w,
                                              backgroundImage: AssetImage("assets/images/review_coments_image.png"), // Correct usage with AssetImage
                                            ),

                                            SizedBox(width: 10.w),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  review['name']!,
                                                  style: jost700(13.23.sp, AppColors.primary,),
                                                ),
                                                SizedBox(height: 5.h),
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: List.generate(
                                                        5,
                                                            (index) => Padding(
                                                          padding: EdgeInsets.symmetric(horizontal: 2.w), // Adjust right padding as needed
                                                          child: Icon(
                                                            index < int.parse(selectedRating[0])
                                                                ? FontAwesomeIcons.solidStar
                                                                : FontAwesomeIcons.star,
                                                            color: AppColors.goldenstar,
                                                            size: 16.w,
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    SizedBox(width: 5.w),
                                                    Text(
                                                      review['date']!,
                                                      style: jost600(
                                                          12.sp,
                                                          AppColors.primary,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          review['comment']!,
                                          style: jost500(
                                            13.sp,
                                            AppColors.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.bottomSheet(
                        isScrollControlled: true,
                        isDismissible: true,
                        enableDrag: true,
                        JobAcceptedBottomsheet(name: widget.name, price: widget.price,),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 8.w),
                      width: 149.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        color: AppColors.primary,
                      ),
                      alignment: Alignment.center,
                      child: Text("Accept", style: jost600(22.sp, AppColors.secondary),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.bottomSheet(
                        isScrollControlled: true,
                        isDismissible: true,
                        enableDrag: true,
                        BidBottomSheet(),
                      );
                    },
                    child: Container(
                      width: 149.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.w),
                        border: Border.all(
                            color: AppColors.secondary
                        ),
                        color: AppColors.buttonGrey,
                      ),
                      alignment: Alignment.center,
                      child: Text("Bid", style: jost600(22.sp, AppColors.primary),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
