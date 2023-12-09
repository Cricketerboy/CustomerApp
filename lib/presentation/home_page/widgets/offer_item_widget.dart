import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.v,
      width: 84.h,
      margin: EdgeInsets.only(top: 1.v),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "30% OFF",
                    style: CustomTextStyles.labelMediumPoppinsBlack900_1,
                  ),
                  SizedBox(height: 41.v),
                  Text(
                    "Meal Plans",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 49.v,
            width: 70.h,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
