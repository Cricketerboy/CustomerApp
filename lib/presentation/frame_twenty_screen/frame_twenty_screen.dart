import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FrameTwentyScreen extends StatelessWidget {
  FrameTwentyScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController writetousController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 264.h,
          child: CustomTextFormField(
            controller: writetousController,
            hintText: "Write to us:",
            hintStyle: CustomTextStyles.labelSmallNunitoSansGray700,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 262.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
          ),
        ),
      ),
    );
  }
}
