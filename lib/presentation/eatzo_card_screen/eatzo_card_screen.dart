import '../eatzo_card_screen/widgets/eatzocard_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_bottom_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EatzoCardScreen extends StatelessWidget {
  EatzoCardScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 91.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildAppBar(context),
                                Container(
                                    height: 87.v,
                                    width: 192.h,
                                    margin: EdgeInsets.only(top: 14.v),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("eatzo",
                                                  style: theme.textTheme
                                                      .displayMedium)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage31,
                                              height: 87.v,
                                              width: 120.h,
                                              radius:
                                                  BorderRadius.circular(40.h),
                                              alignment: Alignment.centerLeft)
                                        ]))
                              ]))),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 34.v),
                            CustomElevatedButton(
                                height: 50.v,
                                text: "A Card with lot of Benifits",
                                margin: EdgeInsets.symmetric(horizontal: 2.h),
                                buttonStyle: CustomButtonStyles.outlineBlack,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallBlack900_1),
                            SizedBox(height: 15.v),
                            _buildPriceColumn(context),
                            SizedBox(height: 30.v),
                            Text("EATZO BENEFITS",
                                style: CustomTextStyles.titleLargePassionOne
                                    .copyWith(
                                        decoration: TextDecoration.underline)),
                            SizedBox(height: 16.v),
                            _buildEatzoCard(context)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 101.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 3.h, right: 319.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildPriceColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              SizedBox(
                  height: 60.v,
                  width: 280.h,
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "₹",
                                            style: CustomTextStyles
                                                .headlineLargePoppinsOnPrimaryContainer),
                                        TextSpan(
                                            text: "1999",
                                            style: theme.textTheme.displaySmall)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 14.v),
                              Divider(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1))
                            ])),
                    Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                            width: 135.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Min recharge\n",
                                      style: CustomTextStyles
                                          .titleLargeOnPrimaryContainerSemiBold),
                                  TextSpan(
                                      text: "2 months validity",
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer11)
                                ]),
                                textAlign: TextAlign.left)))
                  ])),
              SizedBox(height: 11.v),
              Text("Avail benefits upto Rs 3000",
                  style: CustomTextStyles
                      .labelLargePoppinsOnPrimaryContainerMedium_1)
            ]));
  }

  /// Section Widget
  Widget _buildEatzoCard(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 7.v);
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return EatzocardItemWidget();
        });
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
