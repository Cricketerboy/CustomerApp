import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController priceController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildRefreshSection(context),
                  SizedBox(height: 14.v),
                  Text(
                    "Eljad Eendaz",
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    "Edit Profile",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                  SizedBox(height: 42.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "Full name",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 325.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 17.v,
                    ),
                    decoration: AppDecoration.outlineOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "Eljad Eendaz",
                      style: CustomTextStyles.titleLargeOnPrimaryRegular,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "E-mail",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildPriceSection(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text(
                        "Phone Number",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: CustomTextFormField(
                      controller: phoneNumberController,
                      hintText: "+1 (783) 0986 8786",
                      hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 21.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildUpdateProfileSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRefreshSection(BuildContext context) {
    return SizedBox(
      height: 180.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 5.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup76,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 74.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRefresh,
                    height: 38.v,
                    width: 36.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder54,
              ),
              child: Container(
                height: 108.adaptSize,
                width: 108.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 5.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder54,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 90.adaptSize,
                        width: 90.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage13,
                              height: 90.adaptSize,
                              width: 90.adaptSize,
                              radius: BorderRadius.circular(
                                45.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 9.h),
                                padding: EdgeInsets.all(3.h),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: 11.adaptSize,
                                  width: 11.adaptSize,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onError
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCamera,
                      height: 27.adaptSize,
                      width: 27.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 5.h),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceSection(BuildContext context) {
    return SizedBox(
      height: 68.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 327.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Text(
                "prelookstudio@gmail.com",
                style: CustomTextStyles.bodyMediumOnPrimary_1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: CustomTextFormField(
              width: 81.h,
              controller: priceController,
              hintText: " 1679.30",
              alignment: Alignment.bottomLeft,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdateProfileSection(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "Update Profile",
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 57.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
    );
  }
}
