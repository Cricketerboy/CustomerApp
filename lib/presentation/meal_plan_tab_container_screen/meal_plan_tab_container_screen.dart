import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/meal_plan_page/meal_plan_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MealPlanTabContainerScreen extends StatefulWidget {
  const MealPlanTabContainerScreen({Key? key}) : super(key: key);

  @override
  MealPlanTabContainerScreenState createState() =>
      MealPlanTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class MealPlanTabContainerScreenState extends State<MealPlanTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("Meal Planz for you",
                              style: CustomTextStyles.labelMediumPrimary_1))),
                  SizedBox(height: 15.v),
                  _buildTabview(context),
                  Expanded(
                      child: SizedBox(
                          height: 547.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                MealPlanPage(),
                                MealPlanPage(),
                                MealPlanPage(),
                                MealPlanPage()
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 3.h, top: 8.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "MEALS PLAN", margin: EdgeInsets.only(left: 39.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgImage194,
              margin: EdgeInsets.fromLTRB(9.h, 8.v, 77.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 98.v,
        width: 319.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 10.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray70001,
            unselectedLabelStyle: TextStyle(
                fontSize: 10.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(29.h),
                boxShadow: [
                  BoxShadow(
                      color: theme.colorScheme.onError.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(0, 20))
                ]),
            tabs: [
              Tab(
                  child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.outlineOnError2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup49x49,
                            height: 49.adaptSize,
                            width: 49.adaptSize),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.v),
                            child: Text("Breakfast"))
                      ]))),
              Tab(
                  child: Container(
                      decoration: AppDecoration.outlineBluegray1003f1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage134,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(29.h)),
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 17.v),
                            child: Text("Lunch"))
                      ]))),
              Tab(
                  child: Container(
                      decoration: AppDecoration.outlineBluegray1003f1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage13458x58,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(29.h)),
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 17.v),
                            child: Text("Snacks"))
                      ]))),
              Tab(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      decoration: AppDecoration.outlineBluegray1003f1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1341,
                            height: 58.adaptSize,
                            width: 58.adaptSize,
                            radius: BorderRadius.circular(29.h)),
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 15.v),
                            child: Text("Dinner"))
                      ])))
            ]));
  }

  /// Common widget
  Widget _buildSnacks(
    BuildContext context, {
    required String snacksLabel,
  }) {
    return Container(
        decoration: AppDecoration.outlineBluegray1003f1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder29),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage13458x58,
              height: 58.adaptSize,
              width: 58.adaptSize,
              radius: BorderRadius.circular(29.h)),
          SizedBox(height: 7.v),
          Text(snacksLabel,
              style: CustomTextStyles.bodySmallGray70001
                  .copyWith(color: appTheme.gray70001)),
          SizedBox(height: 17.v)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
