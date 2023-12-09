import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MealplanItemWidget extends StatelessWidget {
  const MealplanItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOrange.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 150.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 80.v,
                    width: 150.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage51,
                      height: 55.v,
                      width: 106.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage19430x30,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(
                    right: 7.h,
                    bottom: 5.v,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "Check all menu",
                      style: CustomTextStyles.poppinsGray50001,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Starts from",
                style: theme.textTheme.bodySmall,
              ),
              Container(
                height: 11.v,
                width: 42.h,
                margin: EdgeInsets.only(left: 44.h),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "₹219/ meal",
                        style: CustomTextStyles.poppinsBlack900,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: SizedBox(
                          width: 42.h,
                          child: Divider(
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Offer Price",
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 45.h),
                child: Text(
                  "₹179/ meal",
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
