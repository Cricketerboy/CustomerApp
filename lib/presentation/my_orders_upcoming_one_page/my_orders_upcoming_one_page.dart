import '../my_orders_upcoming_one_page/widgets/myordersupcomingone_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyOrdersUpcomingOnePage extends StatefulWidget {
  const MyOrdersUpcomingOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersUpcomingOnePageState createState() => MyOrdersUpcomingOnePageState();
}

class MyOrdersUpcomingOnePageState extends State<MyOrdersUpcomingOnePage>
    with AutomaticKeepAliveClientMixin<MyOrdersUpcomingOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Column(
                    children: [
                      _buildMyOrdersUpcomingOne(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Lasted Orders",
                            style: CustomTextStyles.titleMediumOnPrimary,
                          ),
                        ),
                      ),
                      SizedBox(height: 209.v),
                      _buildFortyTwo(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyOrdersUpcomingOne(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 70.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return MyordersupcomingoneItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildRateButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Rate",
        margin: EdgeInsets.only(right: 8.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildReOrderButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Re-Order",
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlineOnError,
        buttonTextStyle: CustomTextStyles.bodyMediumSofiaProOnPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray1003f2.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage76,
                  height: 48.v,
                  width: 36.h,
                  alignment: Alignment.topRight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  top: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "19 Jun, 11:50",
                                    style: CustomTextStyles
                                        .bodySmallSofiaProGray500,
                                  ),
                                  Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 15.h,
                                      top: 2.v,
                                      bottom: 5.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: appTheme.gray40002,
                                      borderRadius: BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.v),
                              Row(
                                children: [
                                  Text(
                                    "Subway ",
                                    style: CustomTextStyles.titleMediumBlack900,
                                  ),
                                  Container(
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      top: 3.v,
                                      bottom: 4.v,
                                    ),
                                    padding: EdgeInsets.all(2.h),
                                    decoration: AppDecoration.fillTeal.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgVector3,
                                      height: 1.v,
                                      width: 2.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            bottom: 26.v,
                          ),
                          child: Text(
                            "2 Items",
                            style: CustomTextStyles.bodySmallSofiaProGray500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            bottom: 15.v,
                          ),
                          child: Text(
                            "₹20.50",
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    Row(
                      children: [
                        Container(
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.green400,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "Order Delivered",
                            style: CustomTextStyles.bodySmallSofiaProGreen400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRateButton(context),
              _buildReOrderButton(context),
            ],
          ),
        ],
      ),
    );
  }
}
