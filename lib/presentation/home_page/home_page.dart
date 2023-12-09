import '../home_page/widgets/meal_item_widget.dart';
import '../home_page/widgets/offer_item_widget.dart';
import '../home_page/widgets/widget_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_fifteen.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_ten.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              children: [
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search food",
                  ),
                ),
                SizedBox(height: 15.v),
                _buildEatzo(context),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildLineOne(
                    context,
                    messageText: "BEST TO EXPLORE",
                  ),
                ),
                SizedBox(height: 18.v),
                _buildOffer(context),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Brands",
                      style: CustomTextStyles.labelMediumPoppinsBlack900Medium,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildWidget(context),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildLineOne(
                    context,
                    messageText: "WHAT U WANNA EAT",
                  ),
                ),
                SizedBox(height: 14.v),
                _buildMeal(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage2,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 14.v,
          bottom: 26.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(
          children: [
            AppbarSubtitleTen(
              text: "Home",
              margin: EdgeInsets.only(
                right: 127.h,
              ),
            ),
            SizedBox(height: 5.v),
            AppbarSubtitleFifteen(
              text: "B403, Definer Kingdom, Bommenahalli...",
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleNine(
          text: "M",
          margin: EdgeInsets.fromLTRB(0, 12.v, 5.h, 10.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEatzo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              35.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              right: 50.h,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "EATZO",
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  "a card of all wishes",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOffer(BuildContext context) {
    return SizedBox(
      height: 102.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return OfferItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 52.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 20.h,
            right: 46.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 11.h,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return WidgetItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMeal(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return MealItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildLineOne(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: SizedBox(
            width: 56.h,
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            messageText,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: SizedBox(
            width: 59.h,
            child: Divider(
              indent: 3.h,
            ),
          ),
        ),
      ],
    );
  }
}
