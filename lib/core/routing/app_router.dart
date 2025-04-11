import 'package:edu_manager/core/routing/routers.dart';
import 'package:edu_manager/features/confirmation_email/logic/confirmation_email_cubit.dart';
import 'package:edu_manager/features/confirmation_email/ui/screens/confirmation_email_screen.dart';
import 'package:edu_manager/features/get_current_location/ui/screens/get_current_location_screen.dart';
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
import '../models/requests_models/student_request_model.dart';

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

      case Routes.getCurrentLocation:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<GetAddressCubit>(),
            child: const GetCurrentLocationScreen(),
          ),
        );
      case Routes.selectUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const SelectUserTypeScreen(),
        );
      // case Routes.bottomNavBar:
      //   return MaterialPageRoute(builder: (context) => BottomNavBar(),);
      case Routes.confirmationEmailScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<ConfirmationEmailCubit>(),
              child: const ConfirmationEmailScreen(
                email: 'userData',
              )),
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
