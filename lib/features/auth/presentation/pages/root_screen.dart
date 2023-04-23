import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_loader.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/pages/login_screen.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/pages/main_screen.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/widgets/auth_builder.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
      isNotAuthorized: (context) => LoginScreen(),
      isWaiting: (context) => const AppLoader(),
      isAuthorized: (context, value, child) => const MainScreen(),
    );
  }
}
