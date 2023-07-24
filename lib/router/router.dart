import 'package:auto_route/auto_route.dart';

import 'router.gr.dart' as r;

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends r.$AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: r.HomeRoute.page),
      ];
}
