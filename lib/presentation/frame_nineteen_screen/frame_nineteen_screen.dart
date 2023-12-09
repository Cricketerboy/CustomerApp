import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_radio_button.dart';
import 'package:deliveryapp/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class FrameNineteenScreen extends StatelessWidget {
  FrameNineteenScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  String rechargeEATZOWithThese = "";

  List<String> radioList = [
    "msg_recharge_with_1999",
    "msg_recharge_with_3999",
    "msg_recharge_with_5999"
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 264.h,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 30.v,
            ),
            decoration: AppDecoration.outlineBlack9004,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: appTheme.orangeA700,
                  endIndent: 18.h,
                ),
                SizedBox(height: 46.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 29.h,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 23.v,
                                  width: 43.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "eatzo",
                                          style: CustomTextStyles
                                              .titleLargePassionOneOnPrimaryContainer,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 1.v),
                                          child: SizedBox(
                                            width: 43.h,
                                            child: Divider(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 28.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "Manash Kumar",
                                    style: CustomTextStyles
                                        .bodySmallNumansOnPrimaryContainer10,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 48.v,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Last Recharge ",
                                    style: CustomTextStyles
                                        .numansOnPrimaryContainerRegular,
                                  ),
                                  SizedBox(
                                    width: 45.h,
                                    child: Divider(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 4.h,
                            right: 6.h,
                          ),
                          decoration: AppDecoration.fillLime,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 15.v,
                                width: 31.h,
                                margin: EdgeInsets.only(left: 36.h),
                                decoration: BoxDecoration(
                                  color: appTheme.lightGreen200,
                                ),
                              ),
                              Container(
                                decoration: AppDecoration.fillLightGreen,
                                child: Container(
                                  width: 76.h,
                                  margin: EdgeInsets.only(left: 32.h),
                                  decoration: AppDecoration.fillLime500,
                                  child: CustomSwitch(
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      isSelectedSwitch = value;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        height: 11.v,
                        width: 120.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 118.h,
                                child: Divider(
                                  color: appTheme.orange200,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "70%",
                                style: CustomTextStyles
                                    .bodySmallNumansOnPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Text(
                            "Validity till 25-Oct-23",
                            style: CustomTextStyles.numansOnPrimaryContainer,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                    ],
                  ),
                ),
                SizedBox(height: 54.v),
                Text(
                  "Recharge EATZO with these benefits:",
                  style: CustomTextStyles.labelSmallNunitoSansGray700,
                ),
                SizedBox(height: 1.v),
                _buildRechargeEATZOWithThese(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRechargeEATZOWithThese(BuildContext context) {
    return Column(
      children: [
        CustomRadioButton(
          text: "Recharge with ₹1999 and avail benefits upto ₹2500",
          value: radioList[0],
          groupValue: rechargeEATZOWithThese,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 1.v,
          ),
          textStyle: CustomTextStyles.numansBlack900,
          onChange: (value) {
            rechargeEATZOWithThese = value;
          },
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 9.v,
          ),
          child: CustomRadioButton(
            text: "Recharge with ₹3999 and avail benefits upto ₹4750",
            value: radioList[1],
            groupValue: rechargeEATZOWithThese,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 1.v,
            ),
            textStyle: CustomTextStyles.numansBlack900,
            onChange: (value) {
              rechargeEATZOWithThese = value;
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 9.v,
          ),
          child: CustomRadioButton(
            text: "Recharge with ₹5999 and avail benefits upto ₹7000",
            value: radioList[2],
            groupValue: rechargeEATZOWithThese,
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            textStyle: CustomTextStyles.numansBlack900,
            onChange: (value) {
              rechargeEATZOWithThese = value;
            },
          ),
        ),
      ],
    );
  }
}
