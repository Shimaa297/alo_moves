import 'dart:convert';

import 'package:alo_moves/core/error/failure.dart';
import 'package:alo_moves/moduls/training_series/data/models/series_model.dart';
import 'package:either_dart/either.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/services.dart' as rootBundle;

class APIService {
  static Future<Either<Failure, SeriesModel>> getTrainingSeries() async {
    try {
      String jsonString = await rootBundle.rootBundle.loadString('assets/api_respone.json');
      Map<String, dynamic> jsonData = json.decode(jsonString);

      SeriesModel trainingSeries = SeriesModel.fromJson(jsonData);
      return Right(trainingSeries);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
