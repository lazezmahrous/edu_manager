import 'package:edu_manager/core/di/dependency_injection.dart';
import 'package:edu_manager/core/global%20widgets/app_back_button.dart';
import 'package:edu_manager/core/global%20widgets/app_loading.dart';
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/core/routing/routers.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/get_address_cubit.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator_android/geolocator_android.dart';

import '../../../../core/global widgets/app_buttons.dart';
import '../../../../core/helpers/show_snack_bar.dart';

class GetCurrentAddressBlocBuilder extends StatelessWidget {
  const GetCurrentAddressBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetAddressCubit>(),
      child: BlocConsumer<GetAddressCubit, GetAddressState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (location, address) async {
              // Passing location data to cubit
              vaildCurrentLocation(context, address, location);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return AppGradientButton(
                size: Size(double.infinity, 50.h),
                text: 'تمام إعرف عنواني',
                onPressed: () {
                  context.read<GetAddressCubit>().emitGetAdressStates();
                },
              );
            },
            loading: () => const AppLoading(),
          );
        },
      ),
    );
  }

  void vaildCurrentLocation(
      BuildContext context, String address, Position location) {
    context.read<SignUpCubit>().latitude = location.latitude;
    context.read<SignUpCubit>().longitude = location.longitude;
    context.read<SignUpCubit>().addressController.text = address;

    showToast(isError: false, message: 'تم التحقق من العنوان');
    context.pushNamed(Routes.confirmationEmailScreen,
        arguments: 'lazezma7rous@gmail.com');
  }
}
