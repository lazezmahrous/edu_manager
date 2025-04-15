import 'package:app_links/app_links.dart';
import 'package:edu_manager/features/confirmation_email/ui/screens/validation_user_data_and_do_signup.dart';
import 'package:flutter/material.dart';

import '../../edu_manager_app.dart';

class DeepLinksManager {
  DeepLinksManager._();
  static void handleDeepLink() {
    final appLinks = AppLinks();
    appLinks.uriLinkStream.listen((uri) {
      if (uri.host == 'signin_with_magic_link') {
        print('success signin =======success=======w');
        pushToValidationUserDataAndDoSignup();
      }
    });
  }

  static void pushToValidationUserDataAndDoSignup() {
    EduManagerApp.navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (BuildContext context) => const ValidationUserDataAndDoSignup(),
      ),
    );
  }
}
