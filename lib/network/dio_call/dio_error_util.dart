import 'package:dio/dio.dart';

class DioErrorUtil {
  // general methods:------------------------------------------------------------
  static String handleError(DioException error) {
    String errorDescription = "";
    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioExceptionType.badCertificate:
        errorDescription = "Connection to API server failed due to internet connection";
        break;
      case DioExceptionType.badResponse:
        errorDescription = "Error Message: ${error.response!.data['message']}";
        break;
      case DioExceptionType.connectionError:
        errorDescription = "connection Error occurred";
        break;
      case DioExceptionType.unknown:
        errorDescription = "Unexpected error occurred";
        break;
    }

    // else {
    //   errorDescription = "Unexpected error occurred";
    // }
    return errorDescription;
  }
}