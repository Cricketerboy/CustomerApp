import '../meal_plan_one_screen/widgets/chipview_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_image_one.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_eleven.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_bottom_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MealPlanOneScreen extends StatelessWidget {
  MealPlanOneScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  List<String> radioList = ["lbl_pay_online", "msg_deduct_from_eatzo"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildFrameFortySix(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 10.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 10.v),
                            Divider(),
                            SizedBox(height: 16.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Delivery Address",
                                          style: CustomTextStyles
                                              .titleSmallBlack900SemiBold),
                                      CustomElevatedButton(
                                          height: 15.v,
                                          width: 50.h,
                                          text: "Change",
                                          margin: EdgeInsets.only(
                                              left: 32.h,
                                              top: 2.v,
                                              bottom: 5.v),
                                          buttonStyle:
                                              CustomButtonStyles.fillBlueGray,
                                          buttonTextStyle:
                                              CustomTextStyles.bodySmall9,
                                          onPressed: () {
                                            onTapChange(context);
                                          })
                                    ])),
                            SizedBox(height: 1.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage81,
                                          height: 17.v,
                                          width: 14.h,
                                          margin:
                                              EdgeInsets.only(bottom: 14.v)),
                                      Container(
                                          width: 189.h,
                                          margin: EdgeInsets.only(left: 11.h),
                                          child: Text(
                                              "B403, Definer kingdom Bommenahalli, Bangalore 49",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray700))
                                    ])),
                            SizedBox(height: 5.v),
                            Divider(),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 34.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Starting Date:",
                                              style: CustomTextStyles
                                                  .labelLargeNunitoSans),
                                          Spacer(),
                                          Text("27th September",
                                              style: CustomTextStyles
                                                  .bodySmallGray700),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgLocationGray700,
                                              height: 8.v,
                                              width: 11.h,
                                              margin: EdgeInsets.only(
                                                  left: 6.h,
                                                  top: 3.v,
                                                  bottom: 5.v))
                                        ]))),
                            SizedBox(height: 8.v),
                            Divider(),
                            SizedBox(height: 11.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Delivery Slots: ",
                                          style: CustomTextStyles
                                              .titleSmallBlack900SemiBold),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.h,
                                              top: 3.v,
                                              bottom: 4.v),
                                          child: Text("27th September",
                                              style: CustomTextStyles
                                                  .bodySmallGray700))
                                    ])),
                            SizedBox(height: 13.v),
                            _buildChipView(context),
                            SizedBox(height: 20.v),
                            Divider(),
                            SizedBox(height: 14.v),
                            _buildOrderDetails(context),
                            SizedBox(height: 20.v),
                            _buildApply(context),
                            SizedBox(height: 19.v),
                            _buildPayOnline(context)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Container(
        width: 320.h,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
        child: CustomAppBar(
            height: 100.v,
            title: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(children: [
                  Row(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.h, vertical: 24.v),
                        decoration: AppDecoration.fillBlack.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder15),
                        child: Column(children: [
                          SizedBox(height: 3.v),
                          AppbarImageOne(imagePath: ImageConstant.imgImage51)
                        ])),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 27.h, top: 14.v, bottom: 14.v),
                        child: Column(children: [
                          AppbarSubtitleEleven(text: "Corporate  Lunch Veg"),
                          SizedBox(height: 1.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: EdgeInsets.only(right: 111.h),
                                  padding: EdgeInsets.all(1.h),
                                  decoration: AppDecoration.outlineGreen
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Container(
                                      height: 7.adaptSize,
                                      width: 7.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.green90001,
                                          borderRadius:
                                              BorderRadius.circular(3.h))))),
                          SizedBox(height: 5.v),
                          AppbarSubtitleTwelve(
                              text: "Weekly Plan",
                              margin: EdgeInsets.only(right: 62.h)),
                          SizedBox(height: 4.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 83.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "₹",
                                            style:
                                                CustomTextStyles.bodyMedium13),
                                        TextSpan(
                                            text: "1249",
                                            style: CustomTextStyles
                                                .labelLargePoppins_2)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ]))
                  ])
                ])),
            actions: [
              AppbarTrailingImage(
                  imagePath: ImageConstant.imgClose,
                  margin: EdgeInsets.fromLTRB(31.h, 10.v, 31.h, 73.v))
            ]));
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children:
                List<Widget>.generate(4, (index) => ChipviewItemWidget())));
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Order Details",
                style: CustomTextStyles.titleSmallBlack900SemiBold),
            SizedBox(height: 8.v),
            Text("Item total", style: CustomTextStyles.bodySmallGray60010),
            Text("Price Discount", style: CustomTextStyles.bodySmallGray60010),
            Text("Delivery charges",
                style: CustomTextStyles.bodySmallGray60010),
            SizedBox(height: 1.v),
            Text("Packing charges", style: CustomTextStyles.bodySmallGray60010),
            Text("GST charges", style: CustomTextStyles.bodySmallGray60010)
          ]),
          Spacer(),
          Container(
              height: 29.v,
              width: 40.h,
              margin: EdgeInsets.only(top: 60.v, bottom: 14.v),
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "₹",
                                        style:
                                            CustomTextStyles.bodySmallPrimary),
                                    TextSpan(
                                        text: "75.00",
                                        style: CustomTextStyles
                                            .labelMediumPoppinsPrimary)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 9.v),
                          SizedBox(
                              width: 40.h,
                              child: Divider(color: theme.colorScheme.primary))
                        ])),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 7.v),
                        child: SizedBox(
                            width: 40.h,
                            child: Divider(color: theme.colorScheme.primary)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "₹",
                              style: CustomTextStyles.bodySmallPrimary),
                          TextSpan(
                              text: "35.00",
                              style: CustomTextStyles.labelMediumPoppinsPrimary)
                        ]),
                        textAlign: TextAlign.left))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 33.v),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "₹", style: CustomTextStyles.bodySmallGray600),
                      TextSpan(
                          text: "1499.00",
                          style: CustomTextStyles.labelMediumPoppinsGray600)
                    ]),
                    textAlign: TextAlign.left),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "₹", style: CustomTextStyles.bodySmallPrimary),
                      TextSpan(
                          text: "250.00",
                          style: CustomTextStyles.labelMediumPoppinsPrimary)
                    ]),
                    textAlign: TextAlign.left),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "₹",
                          style: CustomTextStyles.bodySmallGray70010),
                      TextSpan(
                          text: "10.00",
                          style: CustomTextStyles.labelMediumPoppinsGray700)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 1.v),
                SizedBox(
                    height: 28.v,
                    width: 35.h,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: Text("FREE",
                              style: CustomTextStyles
                                  .labelMediumPoppinsGray70010)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "₹",
                                    style: CustomTextStyles.bodySmallGray70010),
                                TextSpan(
                                    text: "62.40",
                                    style: CustomTextStyles
                                        .labelMediumPoppinsGray700)
                              ]),
                              textAlign: TextAlign.left))
                    ]))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray20001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder29),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 13.v, bottom: 9.v),
              child: Text("Promo Code",
                  style: CustomTextStyles.bodyMediumGray40001)),
          CustomElevatedButton(
              width: 93.h,
              text: "Apply",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1)
        ]));
  }

  /// Section Widget
  Widget _buildPayOnline(BuildContext context) {
    return SizedBox(
        height: 59.v,
        width: 320.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Row(children: [
                CustomRadioButton(
                    text: "Pay Online",
                    value: radioList[0],
                    groupValue: radioGroup,
                    textStyle:
                        CustomTextStyles.labelMediumPoppinsGray700SemiBold10,
                    onChange: (value) {
                      radioGroup = value;
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 40.h),
                    child: CustomRadioButton(
                        text: "Deduct from EATZO",
                        value: radioList[1],
                        groupValue: radioGroup,
                        textStyle: CustomTextStyles
                            .labelMediumPoppinsGray700SemiBold10,
                        onChange: (value) {
                          radioGroup = value;
                        }))
              ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(top: 9.v),
                  decoration: AppDecoration.outlineBlack9002
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 40.h, top: 13.v, bottom: 13.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "₹",
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "1321.45",
                                      style: CustomTextStyles
                                          .titleSmallBlack900Bold)
                                ]),
                                textAlign: TextAlign.left)),
                        CustomElevatedButton(
                            height: 50.v,
                            width: 150.h,
                            text: "PROCEED TO PAY",
                            buttonStyle: CustomButtonStyles.fillGreen1,
                            buttonTextStyle: CustomTextStyles
                                .labelLargePoppinsOnPrimaryContainer)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Mealplan:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the frameFortynineScreen when the action is triggered.
  onTapChange(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortynineScreen);
  }
}
