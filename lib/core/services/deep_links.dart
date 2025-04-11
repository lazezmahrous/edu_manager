import 'package:app_links/app_links.dart';

class DeepLinksManager {
  DeepLinksManager._();
  static void handleDeepLink() {
    final appLinks = AppLinks();
    appLinks.uriLinkStream.listen((uri) {
      if (uri.host == 'signin_with_magic_link') {
        print('success signin =======success=======w');
        // pushToResetPasswordScreen();
      }
    });
  }

  // static void pushToResetPasswordScreen() {
  //   EduManagerApp.navigatorKey.currentState?.push(
  //     MaterialPageRoute(
  //       builder: (BuildContext context) => const ResetPasswordScreen(),
  //     ),
  //   );
  // }
}
