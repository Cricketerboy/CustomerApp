import '../my_orders_upcoming_page/widgets/myordersupcoming_item_widget.dart';
import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyOrdersUpcomingPage extends StatefulWidget {
  const MyOrdersUpcomingPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersUpcomingPageState createState() => MyOrdersUpcomingPageState();
}

class MyOrdersUpcomingPageState extends State<MyOrdersUpcomingPage>
    with AutomaticKeepAliveClientMixin<MyOrdersUpcomingPage> {
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
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMyOrdersUpcoming(context),
                      SizedBox(height: 71.v),
                      _buildRateButton(context),
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
  Widget _buildMyOrdersUpcoming(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 20.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return MyordersupcomingItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildRateButton(BuildContext context) {
    return CustomElevatedButton(
      width: 135.h,
      text: "Rate",
      margin: EdgeInsets.only(left: 18.h),
    );
  }
}
