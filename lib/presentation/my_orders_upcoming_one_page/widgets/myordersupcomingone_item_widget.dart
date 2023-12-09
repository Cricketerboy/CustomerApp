import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyordersupcomingoneItemWidget extends StatelessWidget {
  const MyordersupcomingoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 18.v,
      ),
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
                  height: 65.v,
                  width: 64.h,
                  padding: EdgeInsets.all(8.h),
                  decoration: AppDecoration.outlineBluegray1003f2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage27,
                    height: 47.v,
                    width: 46.h,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 20.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "3 Items",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                      SizedBox(
                        width: 102.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Starbuck ",
                              style: theme.textTheme.bodyMedium,
                            ),
                            Container(
                              height: 8.v,
                              width: 10.h,
                              margin: EdgeInsets.symmetric(vertical: 7.v),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 8.v,
                                      width: 10.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.teal500,
                                        borderRadius: BorderRadius.circular(
                                          5.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector3,
                                    height: 1.v,
                                    width: 3.h,
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: 2.v),
                                  ),
                                ],
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
                    "#264100",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 116.v,
            width: 284.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 73.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            text: "Cancel",
                            margin: EdgeInsets.only(right: 8.h),
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumOnPrimary_1,
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButton(
                            text: "Track Order",
                            margin: EdgeInsets.only(left: 8.h),
                            buttonStyle: CustomButtonStyles.outlineOnError,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60.h,
                        child: Text(
                          "Estimated Arrival",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "25",
                            style:
                                CustomTextStyles.displaySmallSofiaProOnPrimary,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              top: 19.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "min",
                              style:
                                  CustomTextStyles.bodyMediumSofiaProOnPrimary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Now",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                      Text(
                        "Food on the way",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
