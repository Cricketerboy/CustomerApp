import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FrameThirteenScreen extends StatelessWidget {
  const FrameThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 264.h,
          padding: EdgeInsets.all(14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildCartSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCartSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cart",
                style: CustomTextStyles.labelLargeNunitoSansPrimary,
              ),
              SizedBox(height: 5.v),
              Text(
                "Added Items",
                style: CustomTextStyles.labelMediumNunitoSansBlack900,
              ),
              SizedBox(height: 26.v),
              Container(
                height: 100.v,
                width: 98.h,
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
                  width: 92.h,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 66.v,
              bottom: 5.v,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.v,
                      width: 116.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Chicken Masala",
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Restaurant ",
                              style: theme.textTheme.labelLarge,
                            ),
                            TextSpan(
                              text: "Name",
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 108.h,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          right: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 28.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "1",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                            Container(
                              width: 17.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "+",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                            Container(
                              width: 28.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "-",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.v,
                      width: 116.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Chicken Masala",
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Restaurant ",
                              style: theme.textTheme.labelLarge,
                            ),
                            TextSpan(
                              text: "Name",
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 108.h,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          right: 4.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 28.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "1",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                            Container(
                              width: 17.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "+",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                            Container(
                              width: 28.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineOrangeA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "-",
                                style: CustomTextStyles.bodySmallNumans11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBDefinerKingdomSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage81,
            height: 17.v,
            width: 14.h,
            margin: EdgeInsets.only(bottom: 9.v),
          ),
          Expanded(
            child: Container(
              width: 203.h,
              margin: EdgeInsets.only(left: 6.h),
              child: Text(
                "B403, Definer Kingdom, Bommenahalli, Bangalore 49",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallNumans10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNewAddressSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 11.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 26.v,
            width: 115.h,
            text: "ADD NEW ADDRESS",
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle:
                CustomTextStyles.labelSmallNunitoSansOnPrimaryContainer,
          ),
          CustomElevatedButton(
            height: 26.v,
            width: 115.h,
            text: "PROCEED",
            margin: EdgeInsets.only(left: 11.h),
            buttonStyle: CustomButtonStyles.fillOrangeTL5,
            buttonTextStyle: CustomTextStyles.labelSmallNunitoSansOrangeA700,
          ),
        ],
      ),
    );
  }
}
