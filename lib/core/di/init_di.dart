import 'package:farmaimpex_test_app/core/di/init_di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initDi(String env) => getIt.init(environment: env);
