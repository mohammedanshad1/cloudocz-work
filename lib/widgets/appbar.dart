import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloudoczwork/constants/app_colors.dart';

class CustomAPPBAR extends StatefulWidget {
  const CustomAPPBAR({super.key});

  @override
  State<CustomAPPBAR> createState() => _CustomAPPBARState();
}

class _CustomAPPBARState extends State<CustomAPPBAR> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180.h,
      pinned: true,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.r),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primaryColor,
                AppColors.secondaryColor,
                AppColors.tertiaryColor,
                AppColors.quaternaryColor,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 24.w,
                          width: 24.w,
                          decoration: BoxDecoration(
                            color: AppColors.notificationColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Icon(
                            Icons.apps,
                            size: 16,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "Learnandexcel",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 40.w,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: AppColors.white24,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Positioned(
                          top: 10.h,
                          right: 10.w,
                          child: Container(
                            height: 10.w,
                            width: 10.w,
                            decoration: BoxDecoration(
                              color: AppColors.notificationColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 26.h),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Courses',
                    hintStyle: TextStyle(color: AppColors.hintTextColor),
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.iconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
