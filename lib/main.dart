import 'package:farmaimpex_test_app/core/presentation/main_app_builder.dart';
import 'package:farmaimpex_test_app/core/presentation/main_app_runner.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment("env", defaultValue: "prod");
  final runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);
}
