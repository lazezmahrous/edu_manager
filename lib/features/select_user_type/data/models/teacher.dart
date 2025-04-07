import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';

class Teacher implements UserType {
  @override
  UserType getUserType() {
    return Teacher();
  }
  
  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
