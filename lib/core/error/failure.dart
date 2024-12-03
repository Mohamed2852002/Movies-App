import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection Timeout');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout With Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout With Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate With Api Server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: 'Request to Api Server was Canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection Error');

      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Unexpected Error Occured, Please Try Again!');

      default:
        return ServerFailure(errorMessage: 'Oops, There was an Error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // see the map of the response
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your Request Not Found, Please Try Again Later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal Server Error, Please Try Again Later!');
    } else {
      return ServerFailure(
          errorMessage: 'Oops, There was an Error, Please Try Again Later!');
    }
  }
}
