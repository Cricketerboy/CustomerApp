import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 85.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPassword1,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 34.v),
              Text(
                "OTP Verification",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 214.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "We will send you ",
                        style: CustomTextStyles.bodyMediumGray80001_1,
                      ),
                      TextSpan(
                        text: "one-time\n password to you mobile \nnumber",
                        style:
                            CustomTextStyles.titleMediumPoppinsBlack900Medium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 39.v),
              Text(
                "Enter Mobile number",
                style: CustomTextStyles.bodyMediumSecondaryContainer13,
              ),
              SizedBox(height: 20.v),
              CustomTextFormField(
                width: 130.h,
                controller: mobileNumberController,
                hintText: "+91 987 987 333",
                hintStyle: CustomTextStyles.bodyMediumGray80001,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(horizontal: 6.h),
                borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
              ),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.otpVerificationOneScreen);
                },
                height: 40.v,
                width: 200.h,
                text: "Get OTP",
                buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
