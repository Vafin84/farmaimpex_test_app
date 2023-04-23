import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key});

  @override
  State<UnknownScreen> createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {
  late Timer _timer;
  int _startTime = 5;
  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_startTime == 0) {
        context.replaceRoute(const RootRoute());
        timer.cancel();
      } else {
        setState(() {
          _startTime--;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_startTime.toString(), style: textTheme.headlineMedium),
            const SizedBox(height: 16),
            Text("Такой страницы не существует.", style: textTheme.titleLarge),
            const SizedBox(height: 16),
            const Text("Сейчас Вы будете перенаправлены на главную станицу"),
          ],
        ),
      ),
    );
  }
}
