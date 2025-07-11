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
        return ServerFailure(errorMessage: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        //Unable to establish a secure connection to the server. Please try again later
        return ServerFailure(
          errorMessage:
              "Unable to establish a secure connection to the server. Please try again later",
        );
      case DioExceptionType.badResponse:
       return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage:
          "Request to ApiServer was canceled. Please try again later",
        );
      case DioExceptionType.connectionError:
        // Please check your internet connection and try again
        return ServerFailure(
          errorMessage:
          "No internet connection. try again",
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage:
          "UnExcepected error",
        );
        default:
          return ServerFailure(
            errorMessage:
            "Opps there was an error",
          );
    }
  }

  factory ServerFailure.fromResponse(int statesCode, dynamic response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(errorMessage: response["error"]["message"]);
    } else if (statesCode == 404) {
      return ServerFailure(
        errorMessage: "Your request not found, Please try later",
      );
    } else if (statesCode == 500) {
      return ServerFailure(
        errorMessage: "Internal Server Error, Please try later",
      );
    } else {
      return ServerFailure(
        errorMessage: "Opps there was an error, Please try later",
      );
    }
  }
}
