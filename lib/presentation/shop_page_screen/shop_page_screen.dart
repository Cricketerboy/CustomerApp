import '../shop_page_screen/widgets/shoppagelist_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ShopPageScreen extends StatelessWidget {
  const ShopPageScreen({Key? key}) : super(key: key);

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
                      SizedBox(height: 22.v),
                      _buildShortByRow(context),
                      SizedBox(height: 21.v),
                      _buildShopPageList(context)
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
        title:
            AppbarSubtitle(text: "MEALS", margin: EdgeInsets.only(left: 60.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgImage194,
              margin: EdgeInsets.fromLTRB(28.h, 8.v, 92.h, 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildShortByRow(BuildContext context) {
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
  Widget _buildShopPageList(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return ShoppagelistItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
