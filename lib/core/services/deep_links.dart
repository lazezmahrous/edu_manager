import 'package:app_links/app_links.dart';
import 'package:edu_manager/edu_manager_app.dart';
import 'package:flutter/material.dart';


class DeepLinksManager {
  DeepLinksManager._();
  static void handleDeepLink() {
    final appLinks = AppLinks();
    appLinks.uriLinkStream.listen((uri) {
      if (uri.host == 'password-reset') {
        pushToResetPasswordScreen();
      }
    });
  }

  static void pushToResetPasswordScreen() {
    EduManagerApp.navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (BuildContext context) => const ResetPasswordScreen(),
      ),
    );
  }
}
