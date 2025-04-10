import 'package:edu_manager/core/global%20widgets/app_back_button.dart';
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/core/theming/font_weight_helper.dart';
import 'package:edu_manager/features/select_user_type/data/models/acdemy.dart';
import 'package:edu_manager/features/select_user_type/data/models/student.dart';
import 'package:edu_manager/features/select_user_type/data/models/teacher.dart';
import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';
import 'package:edu_manager/features/signup/data/networking/services/maps_services.dart';
import 'package:edu_manager/features/signup/ui/widgets/acadmy_signup_form.dart';
import 'package:edu_manager/features/signup/ui/widgets/sign_up_from.dart';
import 'package:edu_manager/features/signup/ui/widgets/teacher_signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/logic/cubit/sign_up_cubit.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/student_signup_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.userType});
  final UserType userType;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.appBarWithArrowBack(),
      body: Form(
        key: context.read<SignUpCubit>().formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          children: [
            const Text(
              'إنشاء حساب',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeightHelper.extraBold,
              ),
            ),
            verticalSpace(20),

            // this widget showing form, for different user types
            buildForm(widget.userType)!,
            verticalSpace(10),
            const SignUpFromWidget(),
            
            verticalSpace(20),
            const SignUpButton(),
          ],
        ),
      ),
    );
  }

  Widget? buildForm(UserType type) {
    if (type is Student) return const StudentSignupForm();
    if (type is Teacher) return const TeacherSignupForm();
    if (type is Academy) return const AcadmySignupForm();
    return null;
  }
}
