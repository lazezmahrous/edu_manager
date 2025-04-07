abstract class UserType {
  void getUserType();
}

class Student implements UserType {
  @override
  void getUserType() {
    print('user is Student');
  }
}
class Teacher implements UserType {
  @override
  void getUserType() {
    print('user is Teacher');
  }
}
class Academy implements UserType {
  @override
  void getUserType() {
    print('user is Academy');
  }
}
