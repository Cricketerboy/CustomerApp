import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: _buildFAQs(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 5.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: " FAQs",
      ),
    );
  }

  /// Section Widget
  Widget _buildFAQs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 5.v,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Can I cancel my order?",
                      style: CustomTextStyles.labelLargePoppinsOnPrimary,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup17962,
                      height: 4.v,
                      width: 9.h,
                      margin: EdgeInsets.only(
                        top: 3.v,
                        bottom: 9.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                Text(
                  "We will update you within 12 hrs :) Thanks",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Column(
            children: [
              _buildHowToCheckMy(
                context,
                message: "How to check my refund?",
              ),
              SizedBox(height: 10.v),
              _buildHowToCheckMy(
                context,
                message: "How to check my refund?",
              ),
              SizedBox(height: 10.v),
              _buildHowToCheckMy(
                context,
                message: "How to check my refund?",
              ),
              SizedBox(height: 10.v),
              _buildHowToCheckMy(
                context,
                message: "How to check my refund?",
              ),
              SizedBox(height: 10.v),
              _buildHowToCheckMy(
                context,
                message: "How to check my refund?",
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHowToCheckMy(
    BuildContext context, {
    required String message,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Text(
              message,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup17962Onprimary,
            height: 4.v,
            width: 9.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
        ],
      ),
    );
  }
}
