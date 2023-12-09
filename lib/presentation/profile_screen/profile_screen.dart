import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController myProfileController = TextEditingController();

  TextEditingController myOrdersController = TextEditingController();

  TextEditingController mySubscriptionsController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController eatzoWalletController = TextEditingController();

  TextEditingController helpSupportController = TextEditingController();

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
              padding: EdgeInsets.only(
                left: 20.h,
                right: 20.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRefresh,
                          height: 38.v,
                          width: 36.h,
                          margin: EdgeInsets.only(bottom: 136.v),
                        ),
                        Container(
                          height: 171.v,
                          width: 125.h,
                          margin: EdgeInsets.only(
                            left: 59.h,
                            top: 3.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 17.adaptSize,
                                  width: 17.adaptSize,
                                  margin: EdgeInsets.only(
                                    right: 27.h,
                                    bottom: 8.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder54,
                                      ),
                                      child: Container(
                                        height: 108.adaptSize,
                                        width: 108.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.h,
                                          vertical: 5.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder54,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage13,
                                              height: 90.adaptSize,
                                              width: 90.adaptSize,
                                              radius: BorderRadius.circular(
                                                45.h,
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCamera,
                                              height: 27.adaptSize,
                                              width: 27.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(right: 6.h),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    Text(
                                      "Eljad Eendaz",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    Text(
                                      "Edit Profile",
                                      style: CustomTextStyles.bodyMediumGray500,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildMyProfile(context),
                  SizedBox(height: 15.v),
                  _buildMyOrders(context),
                  SizedBox(height: 15.v),
                  _buildMySubscriptions(context),
                  SizedBox(height: 15.v),
                  _buildAddress(context),
                  SizedBox(height: 15.v),
                  _buildEatzoWallet(context),
                  SizedBox(height: 15.v),
                  _buildHelpSupport(context),
                  SizedBox(height: 15.v),
                  Container(
                    width: 320.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "FAQs",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildLogOut(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyProfile(BuildContext context) {
    return CustomTextFormField(
      controller: myProfileController,
      hintText: "My Profile",
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildMyOrders(BuildContext context) {
    return CustomTextFormField(
      controller: myOrdersController,
      hintText: "My Orders",
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildMySubscriptions(BuildContext context) {
    return CustomTextFormField(
      controller: mySubscriptionsController,
      hintText: "My Subscriptions ",
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "My Address ",
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildEatzoWallet(BuildContext context) {
    return CustomTextFormField(
      controller: eatzoWalletController,
      hintText: "EATZO/Wallet ",
      hintStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildHelpSupport(BuildContext context) {
    return CustomTextFormField(
      controller: helpSupportController,
      hintText: "Help & Support",
      hintStyle: theme.textTheme.titleSmall!,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildLogOut(BuildContext context) {
    return CustomElevatedButton(
      width: 117.h,
      text: "Log Out",
      margin: EdgeInsets.only(
        left: 121.h,
        right: 122.h,
        bottom: 42.v,
      ),
      leftIcon: Container(
        padding: EdgeInsets.fromLTRB(4.h, 3.v, 5.h, 4.v),
        margin: EdgeInsets.only(right: 9.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            13.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgTwitter,
          height: 17.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOnErrorTL21,
      buttonTextStyle: CustomTextStyles.bodyLargeSofiaProOnPrimaryContainer,
    );
  }
}
