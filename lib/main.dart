import 'package:alo_moves/core/services/services_locator.dart';
import 'package:alo_moves/moduls/training_series/controller/bloc/training_series_bloc.dart';
import 'package:alo_moves/moduls/training_series/screens/challenge_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    ServiceLocator().init();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return MultiBlocProvider(
          providers: <BlocProvider<dynamic>>[
            BlocProvider<TrainingSeriesBloc>(
          create: (_) => sl<TrainingSeriesBloc>(),
        ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
            ),
            home: const ChallengeView(),
          ),
        );
      },
    );
  }
}
