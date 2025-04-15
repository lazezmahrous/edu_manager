import 'user_type_enums.dart';

abstract class UserStrategy {
  UserType  get typeLabel;
  Future<void> signUp();
}
