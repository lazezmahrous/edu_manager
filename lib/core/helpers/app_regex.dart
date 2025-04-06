class AppRegex {
  AppRegex._();

  static bool isEmailValid(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static bool isPhoneVaild(String phoneNumber) {
    return RegExp(r'^[0-9]{10,11}$').hasMatch(phoneNumber);
  }

  static bool isUserNameVaild(String userName) {
    return RegExp(r'^[a-zA-Z0-9_-\s]{3,20}$').hasMatch(userName);
  }

  static bool isArabicName(String name) {
    // remove space from first and last
    name = name.trim();
    return RegExp(r'^[\u0600-\u06FF]+( [\u0600-\u06FF]+){3}$').hasMatch(name);
  }
}
