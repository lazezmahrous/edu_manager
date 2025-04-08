// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_manager/core/theming/colors.dart';
import '../../features/signup/data/logic/cubit/sign_up_cubit.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final bool? isSignUp;
  final bool? isPhoneNumber;
  final bool? enabled;
  final double? cursorWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fieldBackGroundColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Function(CountryCode?)? onInit;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final int? maxLines;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusNode,
    this.enabled,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isSignUp,
    required this.hintText,
    this.isObscureText,
    this.isPhoneNumber = false,
    this.cursorWidth,
    this.suffixIcon,
    this.prefixIcon,
    this.fieldBackGroundColor,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.onInit,
    this.validator,
    this.maxLength,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: enabled ?? true,
        controller: controller,
        autofocus: true,
        buildCounter: (_,
                {required currentLength, required isFocused, maxLength}) =>
            null,
        keyboardType: keyboardType,
        maxLength: maxLength,
        maxLines: maxLines,
        obscureText: isObscureText ?? false,
        style: TextStyles.font16DarkSemiBold,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          labelStyle: TextStyle(color: ColorsManager.darkBlue),
          errorMaxLines: 2,
          helperMaxLines: 2,
          hintMaxLines: 2,
          helperStyle: TextStyle(fontSize: 10.sp),
          isDense: false,
          enabled: true,
          labelText: hintText,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
          hintStyle: hintStyle ?? TextStyles.font13DarkGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: isPhoneNumber!
              ? CountryCodePicker(
                  onInit: onInit,
                  onChanged: (code) {
                    context.read<SignUpCubit>().countryCode = code.dialCode!;
                  },
                  initialSelection: 'EG',
                  favorite: const ['+20', 'EG'],
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                  backgroundColor: Colors.amber,
                  boxDecoration: const BoxDecoration(
                    color: ColorsManager.mainWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                )
              : prefixIcon,
        ));
  }
}
