import 'package:edu_manager/core/helpers/shared_pref_constans.dart';
import 'package:edu_manager/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routers.dart';
import 'core/theming/app_theming_manager.dart';

class EduManagerApp extends StatefulWidget {
  const EduManagerApp({super.key ,required this.appRouter });
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  final AppRouter appRouter;

  @override
  State<EduManagerApp> createState() => _EduManagerAppState();
}

class _EduManagerAppState extends State<EduManagerApp> {
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp(context, Locale('en', 'EN'));
  }

  Widget buildMaterialApp(BuildContext context, Locale locale) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: EduManagerApp.navigatorKey,
          theme: AppThemingManager.ligthTheme,
          locale: locale,
          localizationsDelegates: const [
            // S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute:
              isLoggedInUser ? Routes.bottomNavBar : Routes.onBoardingScreen,
          onGenerateRoute: widget.appRouter.generateRoute,
          builder: (context, child) {
            return Stack(
              children: [
                child!,
                // const ConnectivityBanner(),
              ],
            );
          },
        );
      },
    );
  }
}
