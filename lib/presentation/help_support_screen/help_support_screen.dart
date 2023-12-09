import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  HelpSupportScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController writeToUsController = TextEditingController();

  TextEditingController urgentIssuesController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "Write to us:",
                      style: CustomTextStyles.titleSmallSemiBold,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildWriteToUs(context),
                  SizedBox(height: 23.v),
                  Container(
                    width: 247.h,
                    margin: EdgeInsets.only(right: 72.h),
                    child: Text(
                      "We will update you within 12 hrs :) \nThanks",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildChatWithUs(context),
                  SizedBox(height: 20.v),
                  _buildRate(context),
                  SizedBox(height: 298.v),
                  _buildRate1(context),
                ],
              ),
            ),
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
      title: AppbarSubtitleThree(
        text: "HELP & SUPPORT",
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteToUs(BuildContext context) {
    return CustomTextFormField(
      controller: writeToUsController,
      hintText: "Unable to Recharge? Please help",
      hintStyle: CustomTextStyles.bodySmallGray50001,
      maxLines: 4,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 26.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL15,
      fillColor: appTheme.orange50,
    );
  }

  /// Section Widget
  Widget _buildUrgentIssues(BuildContext context) {
    return CustomTextFormField(
      width: 120.h,
      controller: urgentIssuesController,
      hintText: "8260105102",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(11.h, 8.v, 10.h, 7.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgMaterialsymbolscall,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 30.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 7.v,
        right: 10.h,
        bottom: 7.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineOrange,
      fillColor: appTheme.orange10001,
    );
  }

  /// Section Widget
  Widget _buildMobileNo(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 120.h,
      text: "9900129607",
      margin: EdgeInsets.only(left: 15.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMaterialsymbolscall,
          height: 15.adaptSize,
          width: 15.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOrange,
      buttonTextStyle: CustomTextStyles.bodySmallNumans12,
    );
  }

  /// Section Widget
  Widget _buildChatWithUs(BuildContext context) {
    return Container(
      width: 320.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 78.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Urgent Issues:",
                  style: CustomTextStyles.titleSmallGray700_1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "Please call us on",
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: Row(
              children: [
                _buildUrgentIssues(context),
                _buildMobileNo(context),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRate(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        children: [
          Text(
            "Chat with us : ",
            style: CustomTextStyles.titleSmallGray700SemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "Coming Soon",
              style: CustomTextStyles.bodySmall10,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRate1(BuildContext context) {
    return CustomElevatedButton(
      width: 135.h,
      text: "Rate",
      margin: EdgeInsets.only(left: 16.h),
    );
  }
}
