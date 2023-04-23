import 'package:farmaimpex_test_app/core/domain/app_config.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig {
  @override
  String get baseUrl => "https://raw.githubusercontent.com/sizovsv/test-assignment/main/json";

  @override
  String get host => Environment.prod;

  @override
  Duration get expirationDuration => const Duration(minutes: 1);
}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig {
  @override
  String get baseUrl => "localhost";

  @override
  String get host => Environment.dev;

  @override
  Duration get expirationDuration => const Duration(minutes: 60);
}

@Singleton(as: AppConfig)
@test
class TestAppConfig implements AppConfig {
  @override
  String get baseUrl => "_";

  @override
  String get host => Environment.test;

  @override
  Duration get expirationDuration => const Duration(minutes: 60);
}
