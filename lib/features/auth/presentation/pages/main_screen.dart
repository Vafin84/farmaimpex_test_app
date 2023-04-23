import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/routes/app_router.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      drawer: const Drawer(
        child: DrawerWidget(),
      ),
      routes: const [
        FavoritesRoute(),
        ContactsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Builder(builder: (context) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              if (index == 2) {
                Scaffold.of(context).openDrawer();
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
            items: const [
              BottomNavigationBarItem(label: 'Избранное', icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(label: 'Контакты', icon: Icon(Icons.group)),
              BottomNavigationBarItem(label: 'Профиль', icon: Icon(Icons.manage_accounts)),
            ],
          );
        });
      },
    );
  }
}
