
import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonsShared extends StatelessWidget {
  final VoidCallback onPressed;
  final double? width, height;
  final String text;
  final Color? colorButton;
  final Color? colorBorder;
  final Color? colorText;
  final bool? showShadow;

  const ButtonsShared({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 96,
    this.height = 40,
    this.colorText = ColorManager.primary,
    this.colorButton = ColorManager.white,
    this.colorBorder = ColorManager.white,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          Size(width!.w, height!.h),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100.r)), side: BorderSide(color: colorBorder!, width: 1.w)),
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(colorButton),
      ),
      child: Text(
        text,
        style: AppStyles.body14Medium.copyWith(
          color: colorText,
        ),
      ),
    );
  }
}
