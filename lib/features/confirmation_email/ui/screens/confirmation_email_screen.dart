import 'package:edu_manager/core/global%20widgets/app_buttons.dart';
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/core/models/requests_models/student_request_model.dart';
import 'package:edu_manager/core/services/supabase_database.dart';
import 'package:edu_manager/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constans/app_images.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/global widgets/app_loading.dart';
import '../../logic/confirmation_email_cubit.dart';
import '../widgets/confirmation_email_text.dart';
import '../widgets/send_confirmation_email_again_button.dart';

class ConfirmationEmailScreen extends StatefulWidget {
  const ConfirmationEmailScreen({super.key, required this.email});

  final String email;
  @override
  State<ConfirmationEmailScreen> createState() =>
      _ConfirmationEmailScreenState();
}

class _ConfirmationEmailScreenState extends State<ConfirmationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.appBarWithArrowBack(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: 300.h,
                ),
                child: Image.asset(AppImages.checkEmailImage),
              ),
            ),
            const Expanded(child: ConfirmationEmailText()),
            const Spacer(),
            const SendConfirmationEmailAgainButton(
              email: '',
            ),
            verticalSpace(10)
          ],
        ),
      ),
    );
  }
}
