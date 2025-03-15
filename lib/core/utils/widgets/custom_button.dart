import 'package:flutter/material.dart';
import 'package:nectar/main.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    this.textColor,
    this.width = 300,
    this.height = 60,
    this.icon = false,
    this.iconColor = Colors.white,
  });

  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final double width;
  final double height;
  final Color iconColor;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
        maximumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon is IconData
              ? Icon(
                  icon,
                  size: 22.sp,
                  color: iconColor,
                )
              : Icon(null),
          Text(
            text,
            style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
              color: textColor ?? Colors.white,
            ),
          ),
          Opacity(
            opacity: 0,
            child: Icon(null),
          ),
        ],
      ),
    );
  }
}
