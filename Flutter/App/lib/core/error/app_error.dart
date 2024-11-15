import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';
part 'app_error.g.dart';

@freezed
class AppError with _$AppError implements Exception {
  const AppError._();

  const factory AppError.notFound({
    required Object? source,
  }) = _AppErrorNotFound;

  const factory AppError.connection({
    required Object? source,
  }) = _AppErrorConnection;

  const factory AppError.unknown({
    required Object? source,
  }) = _AppErrorUnknown;

  const factory AppError.programmatic({
    required Object? source,
  }) = _AppErrorProgrammatic;

  factory AppError.fromJson(Map<String, dynamic> json) => _$AppErrorFromJson(json);
}

extension AppErrors on Object? {
  static const int _serverErrorCodeStart = 500;
  static const int _serverErrorCodeEnd = 599;
  static const String _flutterWebNetworkError = 'XMLHttpRequest';

  /// Converts to [AppError] from any object.
  /// This method is able to recognize dio responses and parse them into meaningful errors.
  AppError toAppError() {
    if (this is AppError) {
      return this! as AppError;
    } else if (this is DioException) {
      final dioError = this! as DioException;

      if (dioError.error is AppError) {
        return dioError.error! as AppError;
      } else if (dioError.type == DioExceptionType.badResponse) {
        return _mapResponseErrorToCustomError(dioError, this);
      } else if (isConnectionError(dioError)) {
        return AppError.connection(source: this);
      }
    } else if (this is Error) {
      return AppError.programmatic(source: this);
    }
    return AppError.unknown(source: this);
  }

  AppError _mapResponseErrorToCustomError(DioException dioError, Object? error) {
    final statusCode = dioError.response?.statusCode ?? -1;

    if (statusCode == HttpStatus.notFound) {
      return AppError.notFound(source: error);
    }
    if (statusCode >= _serverErrorCodeStart && statusCode <= _serverErrorCodeEnd) {
      return AppError.unknown(source: error);
    }
    // flutter web only, the browser does not give us exact reason why the request failed
    if (error.toString().contains(_flutterWebNetworkError)) {
      return AppError.connection(source: error);
    }
    return AppError.unknown(source: error);
  }

  static bool isConnectionError(DioException err) {
    return err.type.runtimeType == DioException.connectionError.runtimeType ||
        err.type.runtimeType == DioException.receiveTimeout.runtimeType ||
        err.type.runtimeType == DioException.sendTimeout.runtimeType ||
        err.type.runtimeType == DioException.requestCancelled.runtimeType ||
        err.error is SocketException;
  }
}
