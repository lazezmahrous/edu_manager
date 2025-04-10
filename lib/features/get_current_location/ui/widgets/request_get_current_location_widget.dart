import 'dart:ui';

import 'package:edu_manager/features/get_current_location/ui/widgets/get_current_address_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constans/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RequestGetCurrentLocationWidget extends StatefulWidget {
  const RequestGetCurrentLocationWidget({super.key});

  @override
  State<RequestGetCurrentLocationWidget> createState() =>
      _RequestGetCurrentLocationWidgetState();
}

class _RequestGetCurrentLocationWidgetState
    extends State<RequestGetCurrentLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          constraints: BoxConstraints(
            maxHeight: 260.h,
            maxWidth: 350.w,
          ),
          decoration: BoxDecoration(
              color: ColorsManager.mainWhite,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(width: 0.6, color: ColorsManager.darkBlue)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 150.h,
                    maxWidth: 150.w,
                  ),
                  child: Image.asset(AppImages.location),
                ),
              ),
              verticalSpace(5),
              Expanded(
                child: Text(
                  'إسمحلنا نعرف عنوانك',
                  style: TextStyles.font25BlackBold,
                ),
              ),
              verticalSpace(5),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  'هنستخدم عنوانك علشان نقدر نعرفلك الناس والأماكن القريبة منك تقدر تلغي الوصول من الإعدادات في اي وقت',
                  style: TextStyles.font14LightGrayRegular,
                ),
              ),
              verticalSpace(10),
              const Expanded(child: GetCurrentAddressBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
