import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class RechargeScreen extends StatelessWidget {
  RechargeScreen({Key? key})
      : super(
          key: key,
        );

  String rechargeEATZOSection = "";

  List<String> radioList = [
    "msg_recharge_with_1999",
    "msg_recharge_recharge",
    "msg_recharge_recharge2"
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPriceSection(context),
              SizedBox(height: 23.v),
              _buildRechargeEATZOSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildRechargeNowButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceSection(BuildContext context) {
    return SizedBox(
      height: 352.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 46.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup24,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "₹1999",
                              style: CustomTextStyles.displaySmallDMSans,
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "Last Recharge ",
                              style: CustomTextStyles
                                  .labelLargePoppinsOnPrimaryContainerMedium_2,
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgProfileDeepPurple700,
                          height: 47.v,
                          width: 48.h,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 16.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 30.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.outlineBlack9003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "eatzo",
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                          SizedBox(
                            width: 74.h,
                            child: Divider(
                              color: theme.colorScheme.primary,
                              indent: 14.h,
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Divider(
                            color: appTheme.gray200,
                            indent: 4.h,
                          ),
                          SizedBox(height: 7.v),
                          Container(
                            height: 46.v,
                            width: 201.h,
                            margin: EdgeInsets.only(left: 14.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Manash Kumar",
                                    style: CustomTextStyles
                                        .titleSmallOnSecondaryContainer,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.h),
                                            child: Text(
                                              "60%",
                                              style: CustomTextStyles
                                                  .bodySmallPrimary10,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10.v),
                                        SizedBox(
                                          height: 2.v,
                                          width: 200.h,
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: 200.h,
                                                  child: Divider(
                                                    color: appTheme.blueGray100,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: SizedBox(
                                                  width: 150.h,
                                                  child: Divider(
                                                    color: theme
                                                        .colorScheme.primary,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Validity till 25-Oct-23",
                              style: CustomTextStyles.bodySmallLight,
                            ),
                          ),
                          SizedBox(height: 2.v),
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
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Recharge EATZO with these benefits:",
                style: CustomTextStyles.titleSmallNunitoSansGray700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRechargeEATZOSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: CustomRadioButton(
              text: "Recharge with ₹1999 and avail benefits upto ₹2500",
              value: radioList[0],
              groupValue: rechargeEATZOSection,
              onChange: (value) {
                rechargeEATZOSection = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 19.v,
              right: 17.h,
            ),
            child: CustomRadioButton(
              text:
                  "Recharge Recharge with ₹3999 and avail benefits upto ₹4750",
              value: radioList[1],
              groupValue: rechargeEATZOSection,
              onChange: (value) {
                rechargeEATZOSection = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              right: 20.h,
            ),
            child: CustomRadioButton(
              text:
                  "Recharge Recharge with ₹5999 and avail benefits upto ₹7000",
              value: radioList[2],
              groupValue: rechargeEATZOSection,
              onChange: (value) {
                rechargeEATZOSection = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRechargeNowButtonSection(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "RECHARGE NOW",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 31.v,
      ),
      buttonStyle: CustomButtonStyles.outlineOnError,
      buttonTextStyle: CustomTextStyles.titleSmallGray100,
    );
  }
}
