import 'package:edu_manager/core/global%20widgets/app_buttons.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/core/theming/colors.dart';
import 'package:edu_manager/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfirmationEmailText extends StatefulWidget {
  const ConfirmationEmailText({super.key});

  @override
  State<ConfirmationEmailText> createState() => _ConfirmationEmailTextState();
}

class _ConfirmationEmailTextState extends State<ConfirmationEmailText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          'تم إرسال رابط التحقق إلى بريدك الإلكتروني',
          style: TextStyles.font34BlackBold,
        ),
        verticalSpace(20),
        Text(
          textAlign: TextAlign.center,
          'لقد أرسلنا إليك رابط تسجيل الدخول على بريدك الإلكتروني. من فضلك، تحقق من بريدك واضغط على الرابط لتسجيل الدخول تلقائيًا. إذا لم يصلك الرابط خلال دقيقة، تأكد من كتابة البريد بشكل صحيح أو أعد الإرسال.',
          style: TextStyles.font14LightGrayRegular,
        ),
        // const Spacer(),
      ],
    );
  }

  void openGmail(String email) async {
    final uri = Uri.parse('mailto:$email');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
