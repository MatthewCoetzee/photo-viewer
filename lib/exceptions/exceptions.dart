import 'package:equatable/equatable.dart';

//This file contains custom exceptions thrown
//during an API call
//
//Internal Exception - API Key loading from .env fails
//Status Exception - Thrown when the API response is not 200; eg. error 403
//Unknown Exception - Thrown when a framework exception or other exception is caught

//Base exception class
abstract class PVException extends Equatable {}

class InternalException extends PVException {
  @override
  List<Object?> get props => [];
}

class StatusCodeException extends PVException {
  final int statusCode;

  StatusCodeException({required this.statusCode});
  @override
  List<Object?> get props => [statusCode];
}

class UnknownException extends PVException {
  final String error;

  UnknownException(this.error);
  @override
  List<Object?> get props => [];
}
