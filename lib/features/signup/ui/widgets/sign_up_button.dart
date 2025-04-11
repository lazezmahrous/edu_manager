import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_manager/core/helpers/extensions.dart';

import '../../../../core/global widgets/app_buttons.dart';
import '../../../../core/global widgets/app_loading.dart';
import '../../../../core/routing/routers.dart';
import '../../../../generated/l10n.dart';
import '../../data/logic/cubit/sign_up_cubit.dart';
import '../../data/logic/cubit/sign_up_state.dart';
// import '../../logic/cubit/sign_up_cubit.dart';
// import '../../logic/cubit/sign_up_state.dart';

class SignUpButton extends StatefulWidget {
  const SignUpButton({super.key});
  @override
  State<SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  bool showLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(success: () {
          context.pushNamed(Routes.homeScreen);
        }, error: (error) {
          setState(() {
            showLoading = !showLoading;
          });
        }, loading: () {
          setState(() {
            showLoading = !showLoading;
          });
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: showLoading
            ? const AppLoading()
            : AppGradientButton(
                onPressed: () {
                  if (context
                      .read<SignUpCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    if (context.read<SignUpCubit>().latitude == null &&
                        context.read<SignUpCubit>().longitude == null) {
                      context.pushNamed(Routes.getCurrentLocation);
                    } else {
                      context.read<SignUpCubit>().emitSignupStates();
                    }
                  }
                },
                size: Size(double.infinity, 40.h),
                text: S.of(context).sighnUpHeadText,
              ),
      ),
    );
  }
}
