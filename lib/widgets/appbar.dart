import 'package:cloudoczwork/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

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
              HexColor('2E2461'),
              HexColor('352971'),
              HexColor('3D2481'),
              HexColor('3F3089'),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 24.w,
                        width: 24.w,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: const Icon(
                          Icons.apps,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "Learnandexcel",
                        style: AppTypography.outfitBlack.copyWith(
                          color: Colors.white,
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
                          color: Colors.white24,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 10.h,
                        right: 10.w,
                        child: Container(
                          height: 10.w,
                          width: 10.w,
                          decoration: BoxDecoration(
                            color: Colors.orange,
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
                  hintStyle: TextStyle(color: HexColor('D7D7D7')),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: HexColor('D7D7D7'),
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
