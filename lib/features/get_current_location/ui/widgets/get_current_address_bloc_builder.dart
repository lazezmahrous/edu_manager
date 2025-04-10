import 'package:edu_manager/core/di/dependency_injection.dart';
import 'package:edu_manager/core/global%20widgets/app_loading.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/get_address_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global widgets/app_button.dart';

class GetCurrentAddressBlocBuilder extends StatelessWidget {
  const GetCurrentAddressBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetAddressCubit>(),
      child: BlocConsumer<GetAddressCubit, GetAddressState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (location) async {
              await Future.delayed(const Duration(
                seconds: 5,
              ));

              
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
}
