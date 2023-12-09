import 'package:deliveryapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSubtitleNine extends StatelessWidget {
  AppbarSubtitleNine({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 40.h, // Adjust the width based on your design
          height: 40.h, // Make it a square to achieve a circular shape
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange, // Adjust the color as needed
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white, // Adjust the text color
                fontSize: 16.0, // Adjust the font size
              ),
            ),
          ),
        ),
      ),
    );
  }
}
