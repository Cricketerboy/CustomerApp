import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key})
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
              SizedBox(height: 177.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 114.adaptSize,
                        width: 114.adaptSize,
                      ),
                      SizedBox(height: 19.v),
                      SizedBox(
                        height: 460.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgBg,
                                height: 446.v,
                                width: 360.h,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 228.h,
                                margin: EdgeInsets.only(top: 13.v),
                                child: Text(
                                  "Congratulations!\nYour Order has been placed",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLargeGreen90001
                                      .copyWith(
                                    height: 1.27,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 313.v),
                      _buildHorizontalScrollBackground(context),
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
  Widget _buildHorizontalScrollBackground(BuildContext context) {
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
