import 'package:cloudoczwork/constants/app_colors.dart';
import 'package:cloudoczwork/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For controlling status bar color
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set status bar color to match the gradient from AppColors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors
          .primaryColor, // Make the status bar transparent to apply gradient
      statusBarIconBrightness:
          Brightness.light, // Set icon brightness for visibility
    ));

    return ScreenUtilInit(
      designSize: const Size(
          375, 812), // Set your design dimensions here (width x height)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SplashScreen(), // Start with SplashScreen
        );
      },
    );
  }
}
