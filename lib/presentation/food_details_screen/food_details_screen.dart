import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_icon_button.dart';
import 'package:deliveryapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FoodDetailsScreen extends StatelessWidget {
  FoodDetailsScreen({Key? key}) : super(key: key);

  String choiceOfAddOn = "";

  List<String> radioList = [];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 375.h,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTwentySeven(context),
                      SizedBox(height: 16.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 17.h, right: 23.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("Ground Beef Tacos",
                                                style: CustomTextStyles
                                                    .headlineMediumPoppinsBluegray900)),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgStar,
                                                  height: 17.adaptSize,
                                                  width: 17.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, bottom: 2.v),
                                                  child: Text("4.5",
                                                      style: CustomTextStyles
                                                          .titleSmallSofiaPro)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text("(30+)",
                                                      style: CustomTextStyles
                                                          .bodyMediumSofiaProGray500)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h, bottom: 2.v),
                                                  child: Text("See Review",
                                                      style: CustomTextStyles
                                                          .bodyMediumSofiaProPrimary
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))
                                            ])),
                                        SizedBox(height: 10.v),
                                        _buildPrice(context),
                                        SizedBox(height: 17.v),
                                        Container(
                                            width: 323.h,
                                            margin: EdgeInsets.only(
                                                left: 5.h, right: 6.h),
                                            child: Text(
                                                "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.",
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodyMediumBluegray400
                                                    .copyWith(height: 1.57))),
                                        SizedBox(height: 19.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text("Choice of Add On",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900)),
                                        SizedBox(height: 11.v),
                                        _buildChoiceOfAddOn(context)
                                      ]))))
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return SizedBox(
        height: 206.v,
        width: 323.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage55,
              height: 206.v,
              width: 323.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          CustomAppBar(
              height: 48.v,
              leadingWidth: 71.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 33.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgLocation,
                    margin:
                        EdgeInsets.symmetric(horizontal: 43.h, vertical: 5.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(text: "", style: CustomTextStyles.titleMediumMedium),
                TextSpan(
                    text: "9.50", style: CustomTextStyles.headlineLargeSofiaPro)
              ]),
              textAlign: TextAlign.left),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimary,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup17841))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 12.v, bottom: 13.v),
              child: Text("02", style: CustomTextStyles.titleMediumBlack900)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlineOnErrorTL15,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFloatingIcon)))
        ]));
  }

  /// Section Widget
  Widget _buildChoiceOfAddOn(BuildContext context) {
    return Column(children: [
      CustomRadioButton(
          width: 334.h,
          value: radioList[0],
          groupValue: choiceOfAddOn,
          isRightCheck: true,
          onChange: (value) {
            choiceOfAddOn = value;
          }),
      Padding(
          padding: EdgeInsets.only(top: 9.v),
          child: CustomRadioButton(
              width: 334.h,
              value: radioList[1],
              groupValue: choiceOfAddOn,
              isRightCheck: true,
              onChange: (value) {
                choiceOfAddOn = value;
              })),
      Padding(
          padding: EdgeInsets.only(top: 9.v),
          child: CustomRadioButton(
              width: 334.h,
              value: radioList[2],
              groupValue: choiceOfAddOn,
              isRightCheck: true,
              onChange: (value) {
                choiceOfAddOn = value;
              }))
    ]);
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        height: 53.v,
        width: 167.h,
        text: "Add to cart ",
        margin: EdgeInsets.only(left: 104.h, right: 104.h, bottom: 32.v),
        buttonStyle: CustomButtonStyles.none,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
