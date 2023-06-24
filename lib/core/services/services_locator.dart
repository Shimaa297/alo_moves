import 'package:alo_moves/moduls/training_series/controller/bloc/training_series_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl
    .registerLazySingleton(TrainingSeriesBloc.new);
  }
}