import 'package:deliveryapp/core/app_export.dart';
import 'package:deliveryapp/presentation/my_orders_upcoming_one_page/my_orders_upcoming_one_page.dart';
import 'package:deliveryapp/presentation/my_orders_upcoming_page/my_orders_upcoming_page.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:deliveryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:deliveryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyOrdersUpcomingTabContainerScreen extends StatefulWidget {
  const MyOrdersUpcomingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MyOrdersUpcomingTabContainerScreenState createState() =>
      MyOrdersUpcomingTabContainerScreenState();
}

class MyOrdersUpcomingTabContainerScreenState
    extends State<MyOrdersUpcomingTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 650.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      MyOrdersUpcomingOnePage(),
                      MyOrdersUpcomingPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 7.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "My Orders",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfile,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 7.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 55.v,
      width: 323.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          27.h,
        ),
        border: Border.all(
          color: appTheme.gray20002,
          width: 1.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.h),
            topRight: Radius.circular(24.h),
            bottomLeft: Radius.circular(24.h),
            bottomRight: Radius.circular(23.h),
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.blueGray1003f.withOpacity(0.25),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                18,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "Upcoming",
            ),
          ),
          Tab(
            child: Text(
              "History",
            ),
          ),
        ],
      ),
    );
  }
}
