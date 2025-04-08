import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../core/theming/colors.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField(
      {super.key, required this.iconPath, required this.appTextFormField});

  final String iconPath;
  final AppTextFormField appTextFormField;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: SvgPicture.asset(
              iconPath,
              width: 25.w,
              height: 25.h,
              color: ColorsManager.secondGray,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: appTextFormField,
          ),
        ),
      ],
    );
  }
}
