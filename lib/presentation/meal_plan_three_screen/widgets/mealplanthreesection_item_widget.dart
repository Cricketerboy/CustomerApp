import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MealplanthreesectionItemWidget extends StatelessWidget {
  const MealplanthreesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 101.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.adaptSize,
            width: 100.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 24.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage51,
              height: 49.v,
              width: 93.h,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: Text(
              "MON",
              style: CustomTextStyles.labelMediumPoppinsBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
