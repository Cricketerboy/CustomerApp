import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class OtpVerificationTwoScreen extends StatelessWidget {
  const OtpVerificationTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 40.h,
            top: 90.v,
            right: 40.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMail1,
                height: 200.adaptSize,
                width: 200.adaptSize,
              ),
              SizedBox(height: 29.v),
              Text(
                "OTP Verification",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 24.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the OTP sent to",
                      style: CustomTextStyles.bodyMediumMontserratGray80001,
                    ),
                    TextSpan(
                      text: " +91 987987333",
                      style: CustomTextStyles.titleSmallMontserratGray80001,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 56.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 39.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 19.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn’t you receive the OTP?",
                      style: CustomTextStyles.bodyMediumSecondaryContainer,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "Resend OTP",
                      style: CustomTextStyles.bodyMediumIndigoA700,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 56.v),
              CustomElevatedButton(
                height: 40.v,
                text: "Get OTP",
                margin: EdgeInsets.symmetric(horizontal: 39.h),
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
