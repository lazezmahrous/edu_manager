// ignore_for_file: must_be_immutable

import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppGradientButton extends StatelessWidget {
  AppGradientButton({
    super.key,
    required this.size,
    required this.text,
    required this.onPressed,
    this.color,
  });
  final Size size;
  final String text;
  VoidCallback onPressed;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: .2,
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
            color: color ?? ColorsManager.mainBlue,
            borderRadius: BorderRadius.circular(15.r),
          ),
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: ColorsManager.mainWhite,
              fontSize: 12.sp,
            ),
          )),
    );
  }
}

class AppGradientButtonWithIcon extends StatelessWidget {
  AppGradientButtonWithIcon({
    super.key,
    required this.size,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.color,
  });
  final Size size;
  final String text;
  final Widget icon;
  VoidCallback onPressed;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: .2,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
          color: color ?? ColorsManager.mainBlue,
          borderRadius: BorderRadius.circular(15.r),
        ),
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            horizontalSpace(10),
            Text(
              text,
              style: TextStyles.font12WhiteForButtons,
            ),
          ],
        ),
      ),
    );
  }
}
