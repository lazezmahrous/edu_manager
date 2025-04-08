import 'package:get_it/get_it.dart';

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
}
