import 'package:flutter/material.dart';
import 'package:user_task/core/constant.dart';

class ResponseApi<T> {
  ResponseApi.success({
    @required this.data,
  }) : status = ApiStatus.success;

  ResponseApi.error({
    @required this.error,
  }) : status = ApiStatus.error;

  ResponseApi.noInternet({
    @required this.error,
  }) : status = ApiStatus.noInternet;

  T? data;

  String? error;

  ApiStatus status;

  bool get isSuccess => status == ApiStatus.success;

  bool get isError => status == ApiStatus.error;

  bool get isNoInternet => status == ApiStatus.noInternet;
}
