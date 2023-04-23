import 'package:farmaimpex_test_app/core/di/init_di.dart';
import 'package:farmaimpex_test_app/core/domain/app_builder.dart';
import 'package:farmaimpex_test_app/core/domain/app_runner.dart';
import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_strategy/url_strategy.dart';

class MainAppRunner implements AppRunner {
  final String env;

  MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    initDi(env);
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    WidgetsFlutterBinding.ensureInitialized();

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
    );
    await Hive.initFlutter();
    Hive.registerAdapter(ContactDTOAdapter());
    await preloadData();
    setPathUrlStrategy();
    runApp(appBuilder.buildApp());
  }
}
