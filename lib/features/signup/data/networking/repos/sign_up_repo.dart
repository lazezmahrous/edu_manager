
import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';

import '../../../../../core/helpers/shared_pref_constans.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';

class SignupRepo {
  // final SupabaseAuthService _authService;
  // SignupRepo(this._authService);

  Future<String> signup(UserType user) async {
    try {
      // Sighnup User
      // AuthResponse response = await _authService.signupWithEmailAndPassword(
      //   email: signupRequestBody.email,
      //   password: signupRequestBody.password,
      // );

      // check user sighnup sates
      // if (response.user != null) {
      //   final session = response.session;
      //   if (session?.accessToken != null) {
      //     await _saveToken(session!.accessToken);
      //   }
      //   // save user on online database
      //   // await SupabaseDatabase.insertUserData(
      //   //   userSignUpRequestBody: signupRequestBody,
      //   // );
      //   // // save user on local database
      //   // await HiveHelper.saveUserData(
      //   //   UserModel(
      //   //     name: signupRequestBody.userName,
      //   //     email: signupRequestBody.email,
      //   //     address: signupRequestBody.address,
      //   //     phoneNumber: signupRequestBody.phoneNumber,
      //   //   ),
      //   // );
      // }
    } catch (e) {
      // if (e is AuthException) {
      //   return e.code!;
      // } else {
      //   return 'unexpected_error';
      // }
    }

    return 'error';
  }

  Future<void> _saveToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }
}
