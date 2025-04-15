import 'package:edu_manager/features/select_user_type/data/models/user_strategy.dart';

import 'user_type_enums.dart';

class Academy implements UserStrategy {
  @override
  UserType get typeLabel => UserType.academy;

  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
