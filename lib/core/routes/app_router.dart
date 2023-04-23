import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/presentation/unknown_screen.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/pages/contacts_screen.dart';
import 'package:farmaimpex_test_app/features/favorites/presentation/pages/favorites_screen.dart';
import 'package:farmaimpex_test_app/features/auth/presentation/pages/root_screen.dart';
import 'package:injectable/injectable.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
@singleton
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/",
          initial: true,
          page: RootRoute.page,
          children: [
            AutoRoute(path: "favorites", page: FavoritesRoute.page),
            AutoRoute(path: "contacts", page: ContactsRoute.page),
          ],
        ),
        AutoRoute(path: '*', page: UnknownRoute.page)
      ];
}
