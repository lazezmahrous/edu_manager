import 'package:edu_manager/core/services/supabase_database.dart';
import 'package:edu_manager/features/confirmation_email/logic/confirmation_email_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/confirmation_email/data/networking/confirmation_email_api_service.dart';
import '../../features/confirmation_email/data/repos/confirmation_email_repo.dart';
import '../../features/signup/data/logic/cubit/get_address_cubit.dart';
import '../../features/signup/data/logic/cubit/sign_up_cubit.dart';
import '../../features/signup/data/networking/repos/sign_up_repo.dart';
import '../../features/signup/data/networking/services/maps_services.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  // setup signUp
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo());
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // get address
  getIt.registerLazySingleton<MapsServices>(() => MapsServices());
  getIt.registerLazySingleton<GetAddressCubit>(() => GetAddressCubit(getIt()));

  // confirmation email
  getIt.registerFactory<SupabaseDatabase>(() => SupabaseDatabase());

  getIt.registerLazySingleton<ConfirmationEmailRepo>(
      () => ConfirmationEmailRepo(getIt()));
  getIt.registerFactory<ConfirmationEmailCubit>(
      () => ConfirmationEmailCubit(getIt()));
}
