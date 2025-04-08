import 'package:edu_manager/core/routing/routers.dart';
import 'package:edu_manager/features/select_user_type/data/models/acdemy.dart';
import 'package:edu_manager/features/select_user_type/data/models/student.dart';
import 'package:edu_manager/features/select_user_type/ui/select_user_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/select_user_type/data/models/user_type.dart';
import '../../features/signup/data/logic/cubit/get_address_cubit.dart';
import '../../features/signup/data/logic/cubit/sign_up_cubit.dart';
import '../../features/signup/ui/sign_up_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // const ConnectivityBanner();

    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const OnBoarding(),
      //   );
      case Routes.signupScreen:
  final userType = settings.arguments as UserType;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
              ),
              BlocProvider(
                create: (context) =>
                    getIt<GetAddressCubit>()..emitGetAdressStates(),
              ),
            ],
            child: SignUpScreen(
              userType: userType,
            ),
          ),
        );
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );
      case Routes.selectUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const SelectUserTypeScreen(),
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
