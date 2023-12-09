import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyordersupcomingItemWidget extends StatelessWidget {
  const MyordersupcomingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray1003f2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage35,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 130.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "20 Jun, 10:30",
                                style:
                                    CustomTextStyles.bodySmallSofiaProGray500,
                              ),
                            ),
                            Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 4.v),
                              decoration: BoxDecoration(
                                color: appTheme.gray40002,
                                borderRadius: BorderRadius.circular(
                                  2.h,
                                ),
                              ),
                            ),
                            Text(
                              "3 Items",
                              style: CustomTextStyles.bodySmallSofiaProGray500,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        children: [
                          Text(
                            "Jimmy John’s ",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 3.v,
                              bottom: 4.v,
                            ),
                            padding: EdgeInsets.all(2.h),
                            decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVector3,
                              height: 1.v,
                              width: 2.h,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                          children: [
                            Container(
                              height: 7.adaptSize,
                              width: 7.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                              decoration: BoxDecoration(
                                color: appTheme.green400,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "Order Delivered",
                                style:
                                    CustomTextStyles.bodySmallSofiaProGreen400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 35.v,
                  ),
                  child: Text(
                    "₹17.10",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "Rate",
                  margin: EdgeInsets.only(right: 8.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "Re-Order",
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.outlineOnError,
                  buttonTextStyle:
                      CustomTextStyles.bodyMediumSofiaProOnPrimaryContainer,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
