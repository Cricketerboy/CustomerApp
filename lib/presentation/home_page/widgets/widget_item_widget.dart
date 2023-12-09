import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 50.adaptSize,
          width: 50.adaptSize,
          margin: EdgeInsets.only(top: 2.v),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgImage1150x50,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
