import 'dart:developer';

import 'package:countries/app/domain/app_api.dart';
import 'package:countries/app/domain/app_congif.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: const Duration(seconds: 15),
    );
    dio = Dio(options);
  }

  @override
  Future<Response> get(String path) {
    try {
      return dio.get(path);
    } catch (_) {
      rethrow;
    }
  }
}
