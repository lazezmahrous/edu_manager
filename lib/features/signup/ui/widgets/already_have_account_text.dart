import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routers.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).userisLogin,
            style: TextStyles.font14DarkBlueMedium,
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
            text: S.of(context).loginHeadText,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
