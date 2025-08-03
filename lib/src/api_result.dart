// @dart=3.8
part of '../japan_post_api_client.dart';

sealed class ApiResult<T> {
  const ApiResult();
  factory ApiResult.ok(T data) = ApiResultOk<T>;
  factory ApiResult.error(Object error, StackTrace? s) = ApiResultError<T>;
}

class ApiResultOk<T> extends ApiResult<T> {
  final T data;

  ApiResultOk(this.data);
}

class ApiResultError<T> extends ApiResult<T> {
  final Object error;
  final StackTrace? stackTrace;

  ApiResultError(this.error, this.stackTrace);
}
