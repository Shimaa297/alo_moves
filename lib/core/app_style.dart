import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'resources/color_manager.dart';

class AppStyles {
  static const SystemUiOverlayStyle lightStatusBarIconsWithTransparentColorStyle = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  );

  static const SystemUiOverlayStyle darkStatusBarIconsWithTransparentColorStyle = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  );

  static const String fontFamily = 'Roboto';
  
  static final TextStyle headlines24bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    color: ColorManager.black,
    height: 32.h / 24.sp,
  );
  static final TextStyle title16Regular = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    color: ColorManager.black,
    fontSize: 16.sp,
    height: 21.h / 16.sp,
  );
  static final TextStyle body14Medium = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    height: 19.h / 14.sp,
  );
  static final TextStyle body14Regular = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 19.h / 14.sp,
  );
  static final TextStyle caption12Regular = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    height: 16.h / 12.sp,
  );
}
