import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer tapRecognizer = TapGestureRecognizer();

    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).termsAndConditionsTextOne,
            style: TextStyles.font13GrayRegular,
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
            text: S.of(context).termsAndConditionsTextTow,
            style: TextStyles.font13DarkBlueRegular,
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
            text: S.of(context).termsAndConditionsTextThree,
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
            recognizer: tapRecognizer
              ..onTap = () async {
                // final Uri uri = Uri.parse(AppUrls.policyUrl);

                // await launchUrl(
                //   uri,
                //   mode: LaunchMode.inAppBrowserView,
                //   webViewConfiguration:
                //       const WebViewConfiguration(enableJavaScript: true),
                // );
              },
            text: S.of(context).termsAndConditionsTextFour,
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
