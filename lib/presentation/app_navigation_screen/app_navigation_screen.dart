import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add new address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.foodDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otpVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Verification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otpVerificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Verification Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.otpVerificationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Eatzo card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eatzoCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "shop page  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shopPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "shop page ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shopPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "meal plan - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealPlanTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "meal plan Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealPlanTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "meal plan Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealPlanThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "meal plan One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealPlanOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Orders Upcoming - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.myOrdersUpcomingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Subscription",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mySubscriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HELP & SUPPORT",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " FAQs",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.faqsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "recharge",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.rechargeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Success Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Error Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.errorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame FortyNine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFortynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
