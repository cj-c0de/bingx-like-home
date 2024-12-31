import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.width,
    this.height,
    this.textColor,
  });

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: widget.backgroundColor ?? const Color(0xff0147FF),
      ),
      height: widget.height ?? dim(38),
      width: widget.width,
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: dim(18)),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: dim(14),
            fontWeight: FontWeight.w500,
            color: widget.textColor ?? Colors.white,
          ),
        ),
      )),
    );
  }
}
