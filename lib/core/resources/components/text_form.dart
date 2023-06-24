
import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/resources/color_manager.dart';
import 'package:alo_moves/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormShared extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final ValueChanged? onChanged;
  final validator;
  final String? errorText;
  final bool autoFocus;
  final int maxLine;
  final bool? obscure;
  final String? initialValue;
  final Function(String)? onSubmit;
  const TextFormShared({
    super.key,
    this.controller,
    required this.hintText,
    this.onChanged,
    this.validator,
    this.onSubmit,
    this.textInputAction,
    this.autoFocus = false,
    this.errorText,
    this.textInputType,
    this.initialValue,
    this.maxLine = 1,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: initialValue,
        autofocus: autoFocus,
        controller: controller,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        validator: validator,
        cursorColor: ColorManager.primary,
        onChanged: onChanged,
        onFieldSubmitted: onSubmit,
        maxLines: maxLine,
        obscureText: obscure!,
        obscuringCharacter: '*',
        style: AppStyles.title16Regular,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w, vertical: AppPadding.p18.h),
          labelText: hintText,
          labelStyle: AppStyles.caption12Regular.copyWith(color: ColorManager.primary),
          focusColor: ColorManager.primary.withOpacity(0.12.r),
          errorBorder: OutlineInputBorder(
              gapPadding: 0,
              borderSide: const BorderSide(
                color: ColorManager.red,
              ),
              borderRadius: BorderRadius.circular(4.r)),
          fillColor: ColorManager.primary.withOpacity(.12.r),
          filled: true,
        ));
  }
}
