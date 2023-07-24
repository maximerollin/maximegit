import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:auto_route/auto_route.dart';

import 'di/app_binding.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';
import 'router/router.dart';
import 'router/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorType = EasyLoadingIndicatorType.doubleBounce
    ..maskType = EasyLoadingMaskType.black
    ..indicatorColor = Colors.white
    ..maskColor = Colors.black
    ..progressColor = Colors.transparent
    ..backgroundColor = Colors.transparent
    ..boxShadow = <BoxShadow>[]
    ..indicatorSize = 80
    ..fontSize = 14
    ..textColor = Colors.white;
  await AppBinding().dependencies();
  Get.put(AppRouter(navigatorKey: Get.key));
  runApp(MyApp(appRouter: Get.find()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      enableLog: false,
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('fr', 'FR'),
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      builder: EasyLoading.init(),
      routerDelegate: appRouter.delegate(
        deepLinkBuilder: (deeplink) {
          return DeepLink([HomeRoute()]);
        },
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialBinding: AppBinding(),
    );
  }
}
