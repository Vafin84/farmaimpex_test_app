import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/di/init_di.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_button.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_field.dart';
import 'package:farmaimpex_test_app/core/services/validation_service.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  final validator = getIt<ValidationService>();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text(
                        "Добро пожаловать в наше приложение! Желаем Вам приятного использования!",
                        style: textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      AppTextField(
                        controller: controllerUsername,
                        validator: validator.username,
                        labelText: 'Имя пользователя',
                      ),
                      const SizedBox(height: 30),
                      AppTextButton(
                        onPressed: () {
                          if (formKey.currentState?.validate() == true) {
                            pageController.animateToPage(1,
                                duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                          }
                        },
                        text: "Продолжить",
                      ),
                    ]),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      AppTextField(
                        controller: controllerPassword,
                        validator: validator.password,
                        obscureText: true,
                        labelText: 'Пароль',
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextButton(
                            onPressed: () {
                              pageController.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            text: "Назад",
                          ),
                          const SizedBox(width: 16),
                          AppTextButton(
                            onPressed: () {
                              if (formKey.currentState?.validate() == true) {
                                context.read<AuthCubit>().signIn(
                                      username: controllerUsername.text.trim(),
                                      password: controllerPassword.text.trim(),
                                    );
                              }
                            },
                            text: "Войти",
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
