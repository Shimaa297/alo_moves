// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alo_moves/core/network/error_message_model.dart';
import 'package:equatable/equatable.dart';

 class Failure extends Equatable {
  // final ErrorMessageModel authErrorMessageModel;
  final String? error;
  const Failure(
    // this.authErrorMessageModel,
    this.error,
  );

  @override
  List<Object> get props => [error!];
}
