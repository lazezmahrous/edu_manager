import 'package:edu_manager/core/routing/routers.dart';
import 'package:edu_manager/features/confirmation_email/logic/confirmation_email_cubit.dart';
import 'package:edu_manager/features/confirmation_email/ui/screens/confirmation_email_screen.dart';
import 'package:edu_manager/features/confirmation_email/ui/screens/validation_user_data_and_do_signup.dart';
import 'package:edu_manager/features/get_current_location/ui/screens/get_current_location_screen.dart';
import 'package:edu_manager/features/select_user_type/ui/select_user_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/select_user_type/data/models/user_strategy.dart';
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
        final userType = settings.arguments as UserStrategy;
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

      case Routes.getCurrentLocation:
        final signUpCubit = settings.arguments as SignUpCubit;

        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: signUpCubit,
              ),
              BlocProvider(
                create: (context) => getIt<GetAddressCubit>(),
              ),
            ],
            child: const GetCurrentLocationScreen(),
          ),
        );
      case Routes.selectUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const SelectUserTypeScreen(),
        );
      case Routes.confirmationEmailScreen:
        final signUpCubit = settings.arguments as SignUpCubit;

        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: signUpCubit,
              ),
              BlocProvider(
                create: (context) => getIt<ConfirmationEmailCubit>(),
              )
            ],
            child: const ConfirmationEmailScreen(),
          ),
        );
      case Routes.validationUserDataAndDoSignup:
        final signUpCubit = settings.arguments as SignUpCubit;

        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
              value: signUpCubit, child: const ValidationUserDataAndDoSignup()),
        );

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
