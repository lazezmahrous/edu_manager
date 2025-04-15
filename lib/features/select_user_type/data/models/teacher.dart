import 'package:edu_manager/features/select_user_type/data/models/user_strategy.dart';
import 'package:edu_manager/features/select_user_type/data/models/user_type_enums.dart';

class Teacher implements UserStrategy {
  @override
  UserType get typeLabel => UserType.teacher;

  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
