import 'dart:async';

import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  bool isNavigated =
      false; // Variable to track whether navigation has already occurred

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    // Adding a timer to navigate to the OTP screen after 2 seconds
    Timer(Duration(seconds: 2), () {
      // Check if navigation has already occurred
      if (!isNavigated) {
        // Navigate to OTP screen
        Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
        // Set isNavigated to true to prevent repeated navigation
        isNavigated = true;
      }
    });

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.primary,
                appTheme.orange400,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 45.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 56.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogonew1,
                  height: 44.v,
                  width: 200.h,
                ),
                SizedBox(height: 22.v),
                Text(
                  "Homefood for Home-away",
                  style: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                ),
                SizedBox(height: 38.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 270.adaptSize,
                  width: 270.adaptSize,
                  radius: BorderRadius.circular(
                    135.h,
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
