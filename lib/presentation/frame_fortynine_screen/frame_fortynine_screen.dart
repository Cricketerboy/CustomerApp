import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_title.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FrameFortynineScreen extends StatelessWidget {
  const FrameFortynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildViewRow(context),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: _buildNamePincode(context,
                              namePincode: "Name , Pincode",
                              bDefinerKingdom:
                                  "B403, Definer kingdom Bommenahalli, Bangalore 49")),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: _buildNamePincode(context,
                              namePincode: "Name , Pincode",
                              bDefinerKingdom:
                                  "B403, Definer kingdom Bommenahalli, Bangalore 49")),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: _buildNamePincode(context,
                              namePincode: "Name , Pincode",
                              bDefinerKingdom:
                                  "B403, Definer kingdom Bommenahalli, Bangalore 49")),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: _buildNamePincode(context,
                              namePincode: "Name , Pincode",
                              bDefinerKingdom:
                                  "B403, Definer kingdom Bommenahalli, Bangalore 49")),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCurrentLocationRow(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapClose(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Select Delivery Address"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 26.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(top: 4.v, bottom: 20.v),
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.outlinePrimary3
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(5.h)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 60.h),
                            child: Row(children: [
                              Text("Name , Pincode",
                                  style: theme.textTheme.bodyMedium),
                              Container(
                                  width: 50.h,
                                  margin: EdgeInsets.only(left: 31.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 1.v),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Text("Home",
                                      style: CustomTextStyles.bodySmallLight))
                            ])),
                        SizedBox(height: 6.v),
                        Text("B403, Definer kingdom Bommenahalli, Bangalore 49",
                            style: CustomTextStyles.bodySmallGray700)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildCurrentLocationRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              height: 40.v,
              width: 150.h,
              text: "Current Location",
              buttonStyle: CustomButtonStyles.fillOrange,
              buttonTextStyle: CustomTextStyles.labelLargePoppinsPrimary),
          CustomElevatedButton(
              height: 40.v,
              width: 150.h,
              text: "+ New Address",
              margin: EdgeInsets.only(left: 20.h),
              buttonStyle: CustomButtonStyles.fillPrimaryTL15,
              buttonTextStyle:
                  CustomTextStyles.labelLargePoppinsOnPrimaryContainerMedium)
        ]));
  }

  /// Common widget
  Widget _buildNamePincode(
    BuildContext context, {
    required String namePincode,
    required String bDefinerKingdom,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgGroup19655Gray700,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 4.v, bottom: 20.v)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(namePincode,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: appTheme.black900)),
                    SizedBox(height: 6.v),
                    Text(bDefinerKingdom,
                        style: CustomTextStyles.bodySmallGray700
                            .copyWith(color: appTheme.gray700))
                  ])))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
