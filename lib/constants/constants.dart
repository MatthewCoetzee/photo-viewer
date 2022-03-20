// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

class Constants {
  //String constants - Localization expansion
  static String INTERNAL_ERROR =
      'An internal error occured. Please contact support.';
  static String STATUS_CODE_ERROR(int statusCode) =>
      'Sorry! An error has occured. Error code: $statusCode';
  static String UNKNOWN_ERROR =
      'An unknown error has occured. Please contact support';
}

class MockApi extends Mock implements Client {}
