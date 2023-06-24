import 'package:alo_moves/core/error/failure.dart';
import 'package:alo_moves/core/services/api_service.dart';
import 'package:alo_moves/core/utilis/enums.dart';
import 'package:alo_moves/moduls/training_series/data/models/series_model.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'training_series_event.dart';
part 'training_series_state.dart';

class TrainingSeriesBloc extends Bloc<TrainingSeriesEvent, TrainingSeriesState> {
  SeriesModel seriesModel = SeriesModel();
  TrainingSeriesBloc() : super(const TrainingSeriesState()) {
    on<TrainingSeriesEvent>((event, emit) async {
      if (event is FetchTrainingSeries) {
        try {
          emit(state.copyWith(
            seriesState: RequestState.loading,
          ));
          Either<Failure, SeriesModel> result = await APIService.getTrainingSeries();
          result.fold(
            (Failure l) => emit(state.copyWith(seriesState: RequestState.error, message: l.error)),
            (SeriesModel r) {
              seriesModel = r;
              print(r);
              emit(state.copyWith(seriesModel: r, seriesState: RequestState.loaded));
            },
          );
        } on Exception catch (e) {
          emit(state.copyWith(
            seriesState: RequestState.error,
          ));
        }
      }
    });
  }
}
