import 'package:edu_manager/features/select_user_type/data/models/user_type.dart';

class Academy implements UserType {
  @override
  UserType getUserType() {
    return Academy();
  }
  
  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
