part of 'training_series_bloc.dart';

class TrainingSeriesState extends Equatable {
  final RequestState seriesState;
  final SeriesModel? seriesModel;
  final String message;

  const TrainingSeriesState({
    this.seriesState = RequestState.initState,
    this.seriesModel,
    this.message = "",
  });

  TrainingSeriesState copyWith({
    RequestState? seriesState,
    String? message,
    SeriesModel? seriesModel,
  }) {
    return TrainingSeriesState(
      seriesState: seriesState ?? this.seriesState,
      message: message ?? this.message,
      seriesModel: seriesModel ?? this.seriesModel,
    );
  }

  @override
  List<Object?> get props => [
        seriesState,
        seriesModel,
      ];
}
