import 'package:edu_manager/core/constans/app_svgs.dart';
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/features/get_current_location/ui/screens/map_webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constans/app_images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/get_current_address_bloc_builder.dart';
import '../widgets/request_get_current_location_widget.dart';

class GetCurrentLocationScreen extends StatefulWidget {
  const GetCurrentLocationScreen({super.key});

  @override
  State<GetCurrentLocationScreen> createState() =>
      _GetCurrentLocationScreenState();
}

class _GetCurrentLocationScreenState extends State<GetCurrentLocationScreen> {
  @override
  Widget build(BuildContext context) {
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
                child: SvgPicture.asset(AppSvgs.accessLocatin),
              ),
            ),
            verticalSpace(5),
            Text(
              'إسمحلنا نعرف عنوانك',
              style: TextStyles.font30Regular,
            ),
            verticalSpace(5),
            Text(
              textAlign: TextAlign.center,
              'هنستخدم عنوانك علشان نقدر نعرفلك الناس والأماكن القريبة منك تقدر تلغي الوصول من الإعدادات في اي وقت',
              style: TextStyles.font14LightGrayRegular,
            ),
            const Spacer(),
            const GetCurrentAddressBlocBuilder(),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
