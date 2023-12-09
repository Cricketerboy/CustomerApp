import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EatzocardItemWidget extends StatelessWidget {
  const EatzocardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      child: Row(
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineGray50001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage32,
              height: 28.v,
              width: 31.h,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 9.v,
              bottom: 7.v,
            ),
            child: Text(
              "FREE Delivery within 10km",
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
