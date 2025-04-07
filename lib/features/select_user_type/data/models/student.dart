import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';

class Student implements UserType {
  @override
  UserType getUserType() {
    return Student();
  }
  
  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
