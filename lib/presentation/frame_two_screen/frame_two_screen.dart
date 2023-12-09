import '../frame_two_screen/widgets/frametwolist_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_fourteen.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_bottom_bar.dart';
import 'package:deliveryapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FrameTwoScreen extends StatelessWidget {
  FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 254.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              CustomSearchView(
                controller: searchController,
                hintText: "Search “Chicken Pulao”",
                contentPadding: EdgeInsets.only(
                  top: 3.v,
                  right: 21.h,
                  bottom: 3.v,
                ),
              ),
              SizedBox(height: 3.v),
              _buildSearchView(context),
              SizedBox(height: 5.v),
              Text(
                "BEST TO EXPLORE",
                style: CustomTextStyles.bodySmallNumans,
              ),
              _buildFrameTwoList(context),
              SizedBox(height: 15.v),
              _buildLineThreeRow(context),
              Text(
                "WHAT U WANNA EAT",
                style: CustomTextStyles.bodySmallNumans,
              ),
              SizedBox(height: 7.v),
              _buildMealsStack(context),
              SizedBox(height: 9.v),
              _buildPulaoBiriyanisRow(context),
              SizedBox(height: 2.v),
              _buildHomeHorizontalScroll(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            right: 2.h,
          ),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 27.v,
      leadingWidth: 20.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage2,
        margin: EdgeInsets.only(
          top: 2.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitleSeven(
            text: "Home",
            margin: EdgeInsets.only(right: 148.h),
          ),
          AppbarSubtitleFourteen(
            text: "B403, Definer Kingdom, Bommenahalli...",
          ),
        ],
      ),
      actions: [
        AppbarSubtitleSix(
          text: "M",
          margin: EdgeInsets.only(top: 1.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchView(BuildContext context) {
    return SizedBox(
      height: 61.v,
      width: 249.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 45.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 21.h),
                    child: Text(
                      "EATZO",
                      style: CustomTextStyles.labelLargeOnPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "a card of all wishes",
                    style: CustomTextStyles.bodySmallNumansOnPrimaryContainer,
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage461x61,
            height: 61.adaptSize,
            width: 61.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 27.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwoList(BuildContext context) {
    return SizedBox(
      height: 93.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 100.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return FrametwolistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThreeRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 49.v),
            child: SizedBox(
              width: 75.h,
              child: Divider(),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage11,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 17.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage19430x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(
              left: 21.h,
              top: 2.v,
              bottom: 17.v,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage21,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(
              left: 25.h,
              top: 2.v,
              bottom: 17.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 32.adaptSize,
            width: 32.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              left: 24.h,
              bottom: 17.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 49.v),
            child: SizedBox(
              width: 71.h,
              child: Divider(),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage22,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMealsStack(BuildContext context) {
    return SizedBox(
      height: 91.v,
      width: 247.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 54.v),
                  Text(
                    "MEALS",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 54.v),
                  Text(
                    "CURRIES",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage16,
            height: 50.v,
            width: 113.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 25.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage194,
            height: 61.v,
            width: 109.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 11.h,
              bottom: 1.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPulaoBiriyanisRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 5.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(bottom: 20.v),
              color: appTheme.black900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Container(
                height: 91.v,
                width: 118.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55.h,
                        margin: EdgeInsets.only(right: 6.h),
                        child: Text(
                          "PULAO &\nBIRIYANIS",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: theme.textTheme.labelMedium!.copyWith(
                            height: 1.09,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage18,
                      height: 61.v,
                      width: 88.h,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 103.v,
              width: 118.h,
              margin: EdgeInsets.only(
                left: 11.h,
                bottom: 8.v,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 56.v),
                          SizedBox(
                            width: 50.h,
                            child: Text(
                              "PARATHA MEALS",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: theme.textTheme.labelMedium!.copyWith(
                                height: 1.09,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage39,
                    height: 97.adaptSize,
                    width: 97.adaptSize,
                    radius: BorderRadius.circular(
                      48.h,
                    ),
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 42,
            ),
            Container(
              width: 8.adaptSize,
              margin: EdgeInsets.only(top: 103.v),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Text(
                "0",
                style: CustomTextStyles.nokoraOnPrimaryContainer,
              ),
            ),
            Spacer(
              flex: 57,
            ),
            Container(
              width: 8.adaptSize,
              margin: EdgeInsets.only(top: 103.v),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Text(
                "0",
                style: CustomTextStyles.nokoraOnPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 304.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 11,
              ),
              Text(
                "Meal Plans",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 14,
              ),
              Text(
                "Cart",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 16,
              ),
              Text(
                "Account",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 15,
              ),
              Text(
                "Home",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 11,
              ),
              Text(
                "Meal Plans",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 14,
              ),
              Text(
                "Cart",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
              Spacer(
                flex: 16,
              ),
              Text(
                "Account",
                textAlign: TextAlign.center,
                style: CustomTextStyles.nokoraGray800,
              ),
            ],
          ),
        ),
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
