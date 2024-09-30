import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  const Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection timeout with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send timeout with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Receive timeout with API server");
      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            error.response!.statusCode!, error.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: "Request to API server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(message: "Connection error with API server");
      case DioExceptionType.unknown:
        if (error.message!.contains("SocketException")) {
          return ServerFailure(message: "No Internet connection");
        } else {
          return ServerFailure(message: "Something went wrong");
        }

      default:
        return ServerFailure(message: "Something went wrong");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(message: "Your request not found");
    } else if (statusCode == 500) {
      return ServerFailure(message: "Internal server error");
    } else {
      return ServerFailure(message: "Something went wrong");
    }
  }
}
