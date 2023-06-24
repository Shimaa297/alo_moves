import 'package:alo_moves/core/app_style.dart';
import 'package:alo_moves/core/resources/app_sized_box.dart';
import 'package:alo_moves/core/resources/components/default_tab_bar.dart';
import 'package:alo_moves/core/resources/values_manager.dart';
import 'package:alo_moves/core/services/api_service.dart';
import 'package:alo_moves/core/services/services_locator.dart';
import 'package:alo_moves/core/utilis/enums.dart';
import 'package:alo_moves/moduls/training_series/controller/bloc/training_series_bloc.dart';
import 'package:alo_moves/core/resources/components/network_image.dart';
import 'package:alo_moves/moduls/training_series/screens/widgets/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeView extends StatefulWidget {
  const ChallengeView({super.key});

  @override
  State<ChallengeView> createState() => _ChallengeViewState();
}

class _ChallengeViewState extends State<ChallengeView> with SingleTickerProviderStateMixin {
  APIService apiService = APIService();
  late TabController _tabController;

  @override
  void initState() {
    sl<TrainingSeriesBloc>.call().add(FetchTrainingSeries());
    _tabController = _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
    List<Widget> screens = <Widget>[
     const OverViewWidget(),
     Container(),
     Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ImageShared(imageUrl: state.seriesModel!.coverPhotoUrl!.toString(), widthImage: 375.w, heightImage: 200.h, borderRadius: 0,),
              10.ph,
              Text(
                'the challenge'.toUpperCase(),
                style: AppStyles.headlines24bold,
              ),
              Text(
                state.seriesModel!.coacheName!,
                style: AppStyles.body14Regular,
              ),
              16.ph,
              SizedBox(
                  height: 30.h,
                  width: Localizations.localeOf(context).languageCode == 'en' ? 350.w : null,
                  child: DefaultTabBarShared(
                    tabController: _tabController,
                    tabWidget: <Tab>[
                      Tab(
                        text: 'overview'.toUpperCase(),
                      ),
                      Tab(
                        text: 'classes'.toUpperCase(),
                      ),
                      Tab(
                        text: 'community'.toUpperCase(),
                      )
                    ],
                  )),
              SizedBox(
                height: AppPadding.p30.h,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: screens,
                ),
              ),
            ]);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
