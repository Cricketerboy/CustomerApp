import '../shop_page_one_screen/widgets/shoppageone_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_fifteen.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_thirteen.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ShopPageOneScreen extends StatelessWidget {
  const ShopPageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 29.v),
                      _buildShortBy(context),
                      SizedBox(height: 21.v),
                      _buildShopPageOne(context)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 3.h, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: Row(children: [
          AppbarTitleCircleimage(
              imagePath: ImageConstant.imgImage3140x40,
              margin: EdgeInsets.symmetric(vertical: 5.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(children: [
                AppbarSubtitleOne(text: "Paratha Club"),
                Padding(
                    padding: EdgeInsets.only(right: 40.h),
                    child: Row(children: [
                      Container(
                          width: 40.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.h, vertical: 2.v),
                          decoration: AppDecoration.fillGreen.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppbarSubtitleThirteen(text: "4.1 "),
                                AppbarImage(
                                    imagePath: ImageConstant.imgStar1,
                                    margin: EdgeInsets.only(
                                        left: 9.h, top: 3.v, bottom: 3.v))
                              ])),
                      AppbarSubtitleFifteen(
                          text: "30 ratings",
                          margin: EdgeInsets.only(
                              left: 10.h, top: 3.v, bottom: 2.v))
                    ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildShortBy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 16.h),
        child: Row(children: [
          Text("Short by:", style: CustomTextStyles.bodySmallOnPrimary12),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 2.v),
              child:
                  Text("Popular", style: CustomTextStyles.bodySmallPrimary12)),
          CustomImageView(
              imagePath: ImageConstant.imgVector11,
              height: 2.v,
              width: 3.h,
              margin: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 9.v)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17859,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildShopPageOne(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ShoppageoneItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
