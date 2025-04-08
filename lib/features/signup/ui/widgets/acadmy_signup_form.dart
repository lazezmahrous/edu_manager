import 'package:edu_manager/features/signup/ui/widgets/sign_up_from.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constans/app_svgs.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../generated/l10n.dart';
import '../../data/logic/cubit/sign_up_cubit.dart';
import 'sign_up_text_field.dart';

class AcadmySignupForm extends StatefulWidget {
  const AcadmySignupForm({super.key});

  @override
  State<AcadmySignupForm> createState() => _AcadmySignupFormState();
}

class _AcadmySignupFormState extends State<AcadmySignupForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignUpTextField(
          iconPath: AppSvgs.user,
          appTextFormField: AppTextFormField(
            hintText: S.of(context).sighnUpUserName,
            maxLength: 38,
            controller: context.read<SignUpCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).fieldIsRequired;
              } else if (value.length < 6) {
                return S.of(context).wrongUserName;
              }
              return null;
            },
          ),
        ),       
        verticalSpace(10),
      ],
    );
  }
}
