import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 226.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 545.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 460.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Opacity(
                                      opacity: 0.4,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgBg,
                                        height: 458.v,
                                        width: 360.h,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: 271.h,
                                        margin: EdgeInsets.only(top: 70.v),
                                        child: Text(
                                          "Sorry!\nYour Order has been not placed",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleLargePrimaryContainer
                                              .copyWith(
                                            height: 1.27,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 114.adaptSize,
                              width: 114.adaptSize,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 313.v),
                      _buildHorizontalScroll(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 104.adaptSize,
                width: 104.adaptSize,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage104x104,
                height: 104.adaptSize,
                width: 104.adaptSize,
                margin: EdgeInsets.only(left: 26.h),
              ),
              Container(
                height: 104.adaptSize,
                width: 104.adaptSize,
                margin: EdgeInsets.only(left: 26.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 104.adaptSize,
                        width: 104.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray10001,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgObject,
                      height: 104.adaptSize,
                      width: 104.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
