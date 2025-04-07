import 'package:edu_manager/core/theming/colors.dart';
import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserTypeWidget extends StatelessWidget {
  final String type;
  final String icon;
  final UserType userType;
  const UserTypeWidget({
    super.key,
    required this.icon,
    required this.type,
    required this.userType,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UserType user = userType;
        user.getUserType();

      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: ColorsManager.lighterGray.withOpacity(.5),
        ),
        constraints: BoxConstraints(
          maxWidth: 200.w,
          minHeight: 200.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                icon,
                width: 40.w,
                height: 40.h,
              ),
            ),
            Expanded(child: Text(type)),
          ],
        ),
      ),
    );
  }
}
