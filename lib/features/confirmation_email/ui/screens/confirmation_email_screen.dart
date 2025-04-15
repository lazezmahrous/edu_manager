import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constans/app_images.dart';
import '../widgets/confirmation_email_text.dart';
import '../widgets/send_confirmation_email_again_button.dart';

class ConfirmationEmailScreen extends StatefulWidget {
  const ConfirmationEmailScreen({
    super.key,
  });

  @override
  State<ConfirmationEmailScreen> createState() =>
      _ConfirmationEmailScreenState();
}

class _ConfirmationEmailScreenState extends State<ConfirmationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    print(context.read<SignUpCubit>().nameController.text);
    print(context.read<SignUpCubit>().addressController.text);
    print(context.read<SignUpCubit>().educationGrade);
    print(context.read<SignUpCubit>().phoneController.text);
    print(context.read<SignUpCubit>().emailController.text);
    print(context.read<SignUpCubit>().passwordController.text);
    print(context.read<SignUpCubit>().latitude);
    print(context.read<SignUpCubit>().longitude);
    return Scaffold(
      appBar: context.appBarWithArrowBack(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 250.h,
                  maxWidth: 250.w,
                ),
                child: Image.asset(AppImages.checkEmailImage),
              ),
            ),
            verticalSpace(5),
            const ConfirmationEmailText(),
            const Spacer(),
            SendConfirmationEmailAgainButton(
              email: context.read<SignUpCubit>().addressController.text,
            ),
            verticalSpace(10)
          ],
        ),
      ),
    );
  }
}
