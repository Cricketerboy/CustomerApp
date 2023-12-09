import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController mobileNumberEditTextController =
      TextEditingController();

  TextEditingController pincodeEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  TextEditingController streetEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 20.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Full name",
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 3.v),
                        _buildFullNameEditText(context),
                        SizedBox(height: 23.v),
                        Text(
                          "Mobile number",
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 4.v),
                        _buildMobileNumberEditText(context),
                        SizedBox(height: 23.v),
                        Text(
                          "Pin Code",
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 4.v),
                        _buildPincodeEditText(context),
                        SizedBox(height: 25.v),
                        Text(
                          "City",
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 2.v),
                        _buildCityEditText(context),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Street (Include house number)",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        _buildStreetEditText(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 38.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Add new address",
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameEditTextController,
      hintText: "Arlene McCoy",
      hintStyle: CustomTextStyles.bodyLargeOnPrimary,
      contentPadding: EdgeInsets.all(19.h),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberEditText(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNumberEditTextController,
      hintText: "018-49862746",
      hintStyle: CustomTextStyles.bodyLargeOnPrimary,
      contentPadding: EdgeInsets.all(19.h),
    );
  }

  /// Section Widget
  Widget _buildPincodeEditText(BuildContext context) {
    return CustomTextFormField(
      controller: pincodeEditTextController,
      hintText: "322334",
      hintStyle: CustomTextStyles.bodyLargeGray400,
      contentPadding: EdgeInsets.all(19.h),
    );
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return CustomTextFormField(
      controller: cityEditTextController,
      hintText: "Select City",
      hintStyle: CustomTextStyles.bodyLargeOnPrimary,
      contentPadding: EdgeInsets.all(19.h),
    );
  }

  /// Section Widget
  Widget _buildStreetEditText(BuildContext context) {
    return CustomTextFormField(
      controller: streetEditTextController,
      hintText: "Street",
      hintStyle: CustomTextStyles.bodyLargeGray40002,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(19.h),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "Save",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 43.v,
      ),
      buttonStyle: CustomButtonStyles.outlineOnError,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    );
  }
}
