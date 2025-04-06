import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserTypeWidget extends StatelessWidget {
  final String type;
  final String icon;
  const UserTypeWidget({super.key , required this.icon , required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 200.w,
        minHeight: 200.h,
      ),
      child: Column(
        children: [
         SvgPicture.asset(icon , width: 50.w,height: 50.h,),
         Text(type),
        ],
      ),
    );
  }
}
