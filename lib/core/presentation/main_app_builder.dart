import 'package:farmaimpex_test_app/core/di/init_di.dart';
import 'package:farmaimpex_test_app/core/domain/app_builder.dart';
import 'package:farmaimpex_test_app/core/presentation/cubits/theme_cubit/theme_cubit.dart';
import 'package:farmaimpex_test_app/core/routes/app_router.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/repositories/contact_repository.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/contact_cubit/contact_cubit.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/filter_cubit/filter_cubit.dart';
import 'package:farmaimpex_test_app/features/favorites/presentation/cubit/favorit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    final appRouter = getIt<AppRouter>();
    return _GlobalProviders(
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              brightness: Brightness.light,
              colorSchemeSeed: Colors.blue,
              chipTheme: ChipThemeData(selectedColor: Colors.blue.withOpacity(0.5)),
            ),
            darkTheme: ThemeData(
                useMaterial3: true,
                brightness: Brightness.dark,
                colorSchemeSeed: Colors.blue,
                chipTheme: ChipThemeData(selectedColor: Colors.blue.withOpacity(0.5)),
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(selectedItemColor: Colors.blue)),
            themeMode: state.themeMode,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt.get<AuthCubit>(),
      ),
      BlocProvider(
        create: (context) => ContactCubit(getIt<ContactRepository>())..getContacts(),
      ),
      BlocProvider(
        create: (context) => FilterCubit(),
      ),
      BlocProvider(
        create: (context) => FavoritCubit(),
      ),
      BlocProvider(
        create: (context) => ThemeCubit(),
      ),
    ], child: child);
  }
}
