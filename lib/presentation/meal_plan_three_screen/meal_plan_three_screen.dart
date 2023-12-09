import '../meal_plan_three_screen/widgets/mealplanthreesection_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:deliveryapp/widgets/custom_bottom_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MealPlanThreeScreen extends StatelessWidget {
  MealPlanThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 13.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildApplySection(context),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Use Coupons",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 319.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Use Coupon  ",
                        style: CustomTextStyles.bodySmall12,
                      ),
                      TextSpan(
                        text: "REN199",
                        style: CustomTextStyles.bodySmall12.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "  for 199 OFF on buying Rs 3999 or more",
                        style: CustomTextStyles.bodySmall12,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 14.v),
              Divider(
                color: appTheme.gray700,
              ),
              SizedBox(height: 19.v),
              Text(
                "Menu",
                style: CustomTextStyles.titleLargeBold,
              ),
              SizedBox(height: 14.v),
              _buildMealPlanThreeSection(context),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mon, 25 Sep",
                  style: CustomTextStyles.titleSmallGray700,
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 318.h,
                child: Text(
                  "White Rice with Paneer curry served Salad along with it.White Rice with Paneer curry served Salad along with it.White Rice with Paneer curry served Salad along with it.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmall10,
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 112.h,
                  child: Text(
                    "Nutritional Facts\n621 Cal",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargePoppinsGray700,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame45,
                height: 20.v,
                width: 320.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 75.h),
                  child: Row(
                    children: [
                      Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "Protien: 33g",
                          style:
                              CustomTextStyles.labelLargePoppinsGray700SemiBold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                        decoration: BoxDecoration(
                          color: appTheme.green900,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "Fat: 45g",
                          style:
                              CustomTextStyles.labelLargePoppinsGray700SemiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 64.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16.v,
                        width: 17.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 27.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.lime600,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 45.v,
                        width: 233.h,
                        margin: EdgeInsets.only(left: 6.h),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Fibre: 55g",
                                style: CustomTextStyles
                                    .labelLargePoppinsGray700SemiBold,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "Carbs: 29g",
                                  style: CustomTextStyles
                                      .labelLargePoppinsGray700SemiBold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 16.v,
                                width: 17.h,
                                margin: EdgeInsets.only(right: 70.h),
                                decoration: BoxDecoration(
                                  color: appTheme.red500,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              height: 40.v,
                              width: 150.h,
                              text: "Order Meal Plan",
                              margin: EdgeInsets.only(right: 21.h),
                              buttonStyle: CustomButtonStyles.fillGreen,
                              buttonTextStyle: CustomTextStyles
                                  .labelLargePoppinsOnPrimaryContainer,
                              alignment: Alignment.bottomRight,
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
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplySection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 13.v,
              bottom: 9.v,
            ),
            child: Text(
              "Promo Code",
              style: CustomTextStyles.bodyMediumGray40001,
            ),
          ),
          CustomElevatedButton(
            width: 93.h,
            text: "Apply",
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMealPlanThreeSection(BuildContext context) {
    return SizedBox(
      height: 127.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 8.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return MealplanthreesectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
