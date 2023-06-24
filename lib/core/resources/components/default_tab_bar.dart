import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTabBarShared extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabWidget;
  const DefaultTabBarShared({
    super.key,
    required this.tabController,
    required this.tabWidget,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      unselectedLabelColor: ColorManager.darkGrey,
      labelColor: ColorManager.darkGrey,
      indicatorColor: ColorManager.secondary,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 25.w),
      indicatorWeight: 4.h,
      labelStyle: AppStyles.body14Medium
          .copyWith(color: ColorManager.darkGrey, fontFamily: Localizations.localeOf(context).languageCode == 'ar' ? 'Cairo' : 'Roboto'),
      unselectedLabelStyle: AppStyles.body14Medium
          .copyWith(color: ColorManager.darkGrey, fontFamily: Localizations.localeOf(context).languageCode == 'ar' ? 'Cairo' : 'Roboto'),
      tabs: tabWidget,
    );
  }
}
