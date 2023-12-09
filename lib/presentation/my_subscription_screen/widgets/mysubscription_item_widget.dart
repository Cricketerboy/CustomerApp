import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MysubscriptionItemWidget extends StatelessWidget {
  const MysubscriptionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100.v,
            width: 98.h,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 24.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage51,
              height: 49.v,
              width: 92.h,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              right: 15.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "#264100",
                    style: CustomTextStyles.bodySmallPrimary10_1,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  "Corporate  Lunch Veg",
                  style: CustomTextStyles.labelLargePoppinsGray700Medium,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 192.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Weekly Plan",
                            style: CustomTextStyles.bodySmall10,
                          ),
                          SizedBox(height: 5.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "₹",
                                  style: CustomTextStyles.bodyMedium13,
                                ),
                                TextSpan(
                                  text: "1249",
                                  style: CustomTextStyles.labelLargePoppins_2,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      CustomElevatedButton(
                        height: 20.v,
                        width: 80.h,
                        text: "Completed",
                        margin: EdgeInsets.only(
                          top: 10.v,
                          bottom: 7.v,
                        ),
                        buttonStyle: CustomButtonStyles.outlineOnErrorTL10,
                        buttonTextStyle:
                            CustomTextStyles.bodySmallOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
