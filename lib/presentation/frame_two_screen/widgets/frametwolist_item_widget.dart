import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrametwolistItemWidget extends StatelessWidget {
  const FrametwolistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 92.v),
        child: SizedBox(
          width: 80.h,
          child: Divider(
            indent: 5.h,
          ),
        ),
      ),
    );
  }
}
