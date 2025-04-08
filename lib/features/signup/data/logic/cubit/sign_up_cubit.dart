import 'package:bloc/bloc.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

import '../../networking/repos/sign_up_repo.dart';
import 'sign_up_state.dart';

// import 'package:edu_manager/features/sign_up/data/models/user_sign_up_request_body.dart';
// import 'package:edu_manager/features/sign_up/logic/cubit/sign_up_state.dart';
class SignUpCubit extends Cubit<SignUpState> {
  final SignupRepo _signupRepo;
  SignUpCubit(this._signupRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  String? educationLevel;
  String? educationGrade;

  double? latitude;
  double? longitude;

  String countryCode = '';
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.loading());

    //   try {
    //     final fcmToken = await FirebaseMessaging.instance.getToken();
    //     final encryptedPassword = EncryptionHelper().encryptText(passwordController.text);
    //     await _signupRepo
    //         .signup(
    //       UserSignUpRequestBody(
    //           userName: nameController.text,
    //           email: emailController.text,
    //           password: encryptedPassword,
    //           address: addressController.text,
    //           phoneNumber: '$countryCode${phoneController.text}',
    //           fcmToken: fcmToken!),
    //     )
    //         .then((res) async {
    //       if (res == 'success') {
    //         await SharedPrefHelper.setSecuredString(
    //             SharedPrefKeys.userFcmToken, fcmToken);
    //         emit(const SignUpState.success());
    //       } else {
    //         emit(SignUpState.error(error: res));
    //       }
    //     });
    // } catch (error) {
    //   emit(SignUpState.error(error: error.toString()));
    // }
  }

  // Future<void> saveUserData(UserDataModel userData, String token) async {
  //   print(userData.userEmail);
  //   await HiveHeleper.saveUserData(userData);
  // }
}
