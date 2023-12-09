import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:deliveryapp/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MealPlanTwoPage extends StatefulWidget {
  const MealPlanTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MealPlanTwoPageState createState() => MealPlanTwoPageState();
}

class MealPlanTwoPageState extends State<MealPlanTwoPage>
    with AutomaticKeepAliveClientMixin<MealPlanTwoPage> {
  bool isSelectedSwitch = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 104.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSwitch(
                            value: isSelectedSwitch,
                            onChange: (value) {
                              isSelectedSwitch = value;
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Include weekends",
                              style: CustomTextStyles.bodySmallNumans10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.v),
                    CustomElevatedButton(
                      height: 40.v,
                      text: "Order Meal Plan",
                      buttonStyle: CustomButtonStyles.fillGreen,
                      buttonTextStyle:
                          CustomTextStyles.labelLargePoppinsOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
