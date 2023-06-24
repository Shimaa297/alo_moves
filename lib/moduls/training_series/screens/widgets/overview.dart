import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/resources/app_sized_box.dart';
import 'package:alo_moves/core/services/services_locator.dart';
import 'package:alo_moves/moduls/training_series/controller/bloc/training_series_bloc.dart';
import 'package:flutter/material.dart';

class OverViewWidget extends StatelessWidget {
  const OverViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Text(
          'about the series'.toUpperCase(),
          style: AppStyles.body14Medium,
        ),
        30.ph,
        Text(
          sl<TrainingSeriesBloc>().seriesModel.aboutSeries!,
          style: AppStyles.body14Regular,
        ),
      ],
    );
  }
}
