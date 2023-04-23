import 'package:dio/dio.dart';
import 'package:farmaimpex_test_app/core/domain/app_api.dart';
import 'package:farmaimpex_test_app/core/domain/app_config.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;
  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: const Duration(milliseconds: 15000),
    );
    dio = Dio(options);
  }

  @override
  Future<Response> getContacts() {
    try {
      return dio.get("/contacts/json");
    } catch (_) {
      rethrow;
    }
  }
}
