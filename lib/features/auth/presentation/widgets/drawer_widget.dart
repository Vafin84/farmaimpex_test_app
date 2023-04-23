import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/presentation/cubits/theme_cubit/theme_cubit.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeCubit>().state.themeMode;
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.whenOrNull(authorized: (userEntity) {
              return Column(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(child: Text(userEntity.username[0])),
                    accountName: Text(userEntity.username),
                    accountEmail: Text(userEntity.email),
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      ExpansionTile(
                        leading: const Icon(Icons.color_lens),
                        title: const Text("Тема приложения"),
                        children: [
                          RadioListTile(
                            title: const Text("Системная"),
                            value: ThemeMode.system,
                            groupValue: themeMode,
                            onChanged: (value) => context.read<ThemeCubit>().changeTheme(themeMode: value!),
                          ),
                          RadioListTile(
                            title: const Text("Светлая"),
                            value: ThemeMode.light,
                            groupValue: themeMode,
                            onChanged: (value) => context.read<ThemeCubit>().changeTheme(themeMode: value!),
                          ),
                          RadioListTile(
                            title: const Text("Тёмная"),
                            value: ThemeMode.dark,
                            groupValue: themeMode,
                            onChanged: (value) => context.read<ThemeCubit>().changeTheme(themeMode: value!),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout_outlined),
                        title: const Text("Выход"),
                        onTap: () {
                          context.router
                            ..removeWhere((route) => true)
                            ..replaceNamed("/");
                          context.read<AuthCubit>().signOut();
                        },
                      ),
                    ],
                  )),
                ],
              );
            }) ??
            const SizedBox.shrink();
      },
    );
  }
}
