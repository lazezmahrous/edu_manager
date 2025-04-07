import 'package:edu_manager/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeUserWidget extends StatelessWidget {
  const WelcomeUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 200.w, maxHeight: 200.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'إزيــــك! 😎',
            style: TextStyles.font35SemiBold,
          ),
          Text(
            'حابب نساعدك بصفتك إيه ؟',
            style: TextStyles.font30Regular,
          )
        ],
      ),
    );
  }
}
