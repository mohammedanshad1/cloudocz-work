import 'package:cloudoczwork/constants/app_colors.dart';
import 'package:cloudoczwork/constants/app_typography.dart';
import 'package:cloudoczwork/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to CourseListingPage after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CourseListingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Splash screen background color
      body: Center(
        child: Text(
          'Learning App',
          style: AppTypography.outfitboldmainHead.copyWith(
            fontSize: 30.sp, // Adjust font size based on screen size
            color: Colors.white, // White text color
          ),
        ),
      ),
    );
  }
}