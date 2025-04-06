import 'package:edu_manager/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // const ConnectivityBanner();

    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const OnBoarding(),
      //   );
      // case Routes.signupScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => MultiBlocProvider(
      //       providers: [
      //         BlocProvider(
      //           create: (context) => getIt<SignUpCubit>(),
      //         ),
      //         BlocProvider(
      //           create: (context) =>
      //               getIt<GetAddressCubit>()..emitGetAdressStates(),
      //         ),
      //       ],
      //       child: const SignupScreen(),
      //     ),
      //   );
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      // case Routes.bottomNavBar:
      //   return MaterialPageRoute(builder: (context) => BottomNavBar(),);
        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
