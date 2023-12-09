import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:deliveryapp/presentation/meal_plan_two_page/meal_plan_two_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MealPlanTwoTabContainerScreen extends StatefulWidget {
  const MealPlanTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MealPlanTwoTabContainerScreenState createState() =>
      MealPlanTwoTabContainerScreenState();
}

class MealPlanTwoTabContainerScreenState
    extends State<MealPlanTwoTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame43,
                height: 200.v,
                width: 320.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 32.v,
                  width: 262.h,
                  margin: EdgeInsets.only(left: 20.h),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Homefood for Home-away",
                          style: CustomTextStyles
                              .titleSmallOnPrimaryContainerSemiBold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Corporate Lunch Thali",
                          style: CustomTextStyles.titleLargeGray800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Container(
                width: 312.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 28.h,
                ),
                child: Text(
                  "A healthy home cooked tasty lunch for whole month\n\nnutritous and simple ingredients for life. A healthy \n\nhome cooked tasty lunch for whole month nutritous\n \nand simple ingredients for life.",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallOnSecondaryContainer,
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                height: 132.v,
                width: 280.h,
                decoration: AppDecoration.outlineBlack9001,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder15,
                        ),
                        child: Container(
                          height: 42.v,
                          width: 280.h,
                          decoration: BoxDecoration(
                            color: appTheme.orange200,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                          ),
                          child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: appTheme.black900,
                            labelStyle: TextStyle(
                              fontSize: 13.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            unselectedLabelColor: appTheme.black900,
                            unselectedLabelStyle: TextStyle(
                              fontSize: 13.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                            indicatorPadding: EdgeInsets.all(
                              2.0.h,
                            ),
                            indicator: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10.h),
                              ),
                            ),
                            tabs: [
                              Tab(
                                child: Text(
                                  "Monthly",
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Weekly",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: appTheme.orange200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.circleBorder15,
                        ),
                        child: Container(
                          height: 70.v,
                          width: 200.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 59.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOrange200.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder15,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "₹",
                                          style: CustomTextStyles
                                              .titleLargeNokoraGray700Regular,
                                        ),
                                        TextSpan(
                                          text: "1499",
                                          style: CustomTextStyles
                                              .titleLargeNokoraGray700,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "₹",
                                        style: CustomTextStyles
                                            .headlineMediumRegular,
                                      ),
                                      TextSpan(
                                        text: "1249",
                                        style: theme.textTheme.headlineMedium,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 20.v),
                                  child: SizedBox(
                                    width: 70.h,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _buildTabBarView(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Meal Plans",
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 120.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          MealPlanTwoPage(),
          MealPlanTwoPage(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
