import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/services/api_service.dart';
import 'package:alo_moves/core/services/services_locator.dart';
import 'package:alo_moves/core/utilis/enums.dart';
import 'package:alo_moves/moduls/training_series/controller/bloc/training_series_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView({super.key});

  @override
  State<ChallengeView> createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> {
  APIService apiService = APIService();
  @override
  void initState() {
    sl<TrainingSeriesBloc>.call().add(FetchTrainingSeries());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: AppStyles.lightStatusBarIconsWithTransparentColorStyle,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: const ArrowBackShared()
      ),
      body: BlocConsumer<TrainingSeriesBloc, TrainingSeriesState>(
        listener: (context, TrainingSeriesState state) {
          if (state.seriesState == RequestState.error) {
            print(state.message);
          }
        },
        builder: (context, TrainingSeriesState state) {
          if (state.seriesState == RequestState.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.seriesState == RequestState.loaded) {
            return Column(children: <Widget>[
              Text(
                'the challenge'.toUpperCase(),
                style: AppStyles.headlines24bold,
              ),
              Text(
                state.seriesModel!.seriesName!,
                style: AppStyles.headlines24bold,
              ),
            ]);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
