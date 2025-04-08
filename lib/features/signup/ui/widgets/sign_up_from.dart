import 'package:flutter/material.dart';
// import 'package:edu_manager/core/di/dependency_injection.dart';
// import 'package:edu_manager/features/sign_up/logic/cubit/get_address_cubit.dart';
import 'package:edu_manager/generated/l10n.dart';
import '../../../../core/constans/app_svgs.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../data/logic/cubit/sign_up_cubit.dart';
import 'sign_up_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFromWidget extends StatefulWidget {
  const SignUpFromWidget({super.key});
  @override
  State<SignUpFromWidget> createState() => _SignUpFromWidgetState();
}

class _SignUpFromWidgetState extends State<SignUpFromWidget> {
  bool isPasswordIsObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpTextField(
          iconPath: AppSvgs.at,
          appTextFormField: AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
            hintText: S.of(context).loginEmail,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).erordata;
              } else if (!AppRegex.isEmailValid(value)) {
                return S.of(context).loginEmailError;
              }
              return null;
            },
          ),
        ),
        verticalSpace(15),
        SignUpTextField(
          iconPath: AppSvgs.phoneCall,
          appTextFormField: AppTextFormField(
            maxLength: 30,
            controller: context.read<SignUpCubit>().phoneController,
            hintText: S.of(context).phoneNumber,
            isPhoneNumber: true,
            onInit: (code) {
              context.read<SignUpCubit>().countryCode = code!.dialCode!;
            },
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).phoneNumberIsEmpty;
              } else if (!AppRegex.isPhoneVaild(value)) {
                return S.of(context).validPhoneNumber;
              }
              return null;
            },
          ),
        ),
        verticalSpace(15),
        SignUpTextField(
          iconPath: AppSvgs.passwordLock,
          appTextFormField: AppTextFormField(
            maxLength: 60,
            controller: context.read<SignUpCubit>().passwordController,
            hintText: S.of(context).passwoard,
            isObscureText: isPasswordIsObscureText,
            maxLines: 1,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordIsObscureText = !isPasswordIsObscureText;
                });
              },
              child: Icon(
                isPasswordIsObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: ColorsManager.secondGray,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).erordata;
              } else if (value.length < 6) {
                return S.of(context).weakPassword;
              }
              return null;
            },
          ),
        ),
        verticalSpace(15),
        SignUpTextField(
          iconPath: AppSvgs.passwordLock,
          appTextFormField: AppTextFormField(
            maxLength: 60,
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            hintText: S.of(context).confirmPsswoard,
            isObscureText: isPasswordIsObscureText,
            maxLines: 1,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordIsObscureText = !isPasswordIsObscureText;
                });
              },
              child: Icon(
                isPasswordIsObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: ColorsManager.secondGray,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).erordata;
              } else if (value !=
                  context.read<SignUpCubit>().passwordController.text) {
                return S.of(context).passwoardNotMatch;
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
