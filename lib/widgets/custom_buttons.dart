// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backGroundColor;
  final Color? foreGroundColor;
  final double height;
  final double width;
  final Widget child;
  final double? radius;
  final BorderSide? side;

  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    this.backGroundColor,
    this.foreGroundColor,
    this.height = 48,
    this.width = double.infinity,
    required this.child,
    this.radius = 0,
    this.side,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: side,
        backgroundColor: backGroundColor,
        foregroundColor: foreGroundColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
      child: child,
    );
  }
}
