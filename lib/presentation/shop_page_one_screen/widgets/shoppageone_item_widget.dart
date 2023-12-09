import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoppageoneItemWidget extends StatelessWidget {
  const ShoppageoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 179.v,
            width: 320.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 165.v,
                    width: 320.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage80,
                          height: 165.v,
                          width: 320.h,
                          radius: BorderRadius.circular(
                            18.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(12.h, 12.v, 12.h, 119.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 71.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 5.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineOnError1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder15,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "",
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        TextSpan(
                                          text: "10.35",
                                          style: CustomTextStyles
                                              .titleMediumOnPrimary_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup17481,
                                  height: 34.v,
                                  width: 33.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 13.h,
                      top: 150.v,
                      right: 235.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlineBluegray1003f.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "4.5",
                            style: CustomTextStyles.labelLargeSofiaPro,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPath3389,
                          height: 9.v,
                          width: 10.h,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 3.v,
                            bottom: 1.v,
                          ),
                          child: Text(
                            "(25+)",
                            style: CustomTextStyles.bodySmallSofiaProGray500_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "Chicken Hawaiian",
              style: CustomTextStyles.titleMediumPoppinsBlack900,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "Chicken, Cheese and pineapple",
              style: CustomTextStyles.bodyMediumGray70002,
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
