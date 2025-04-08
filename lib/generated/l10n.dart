// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `No Connection`
  String get noConnection {
    return Intl.message(
      'No Connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `By registering, you agree to our`
  String get termsAndConditionsTextOne {
    return Intl.message(
      'By registering, you agree to our',
      name: 'termsAndConditionsTextOne',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditionsTextTow {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditionsTextTow',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get termsAndConditionsTextThree {
    return Intl.message(
      'and',
      name: 'termsAndConditionsTextThree',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get termsAndConditionsTextFour {
    return Intl.message(
      'Privacy Policy',
      name: 'termsAndConditionsTextFour',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `There was a problem detecting your address automatically, you can enter it manually`
  String get getLocationError {
    return Intl.message(
      'There was a problem detecting your address automatically, you can enter it manually',
      name: 'getLocationError',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get userisLogin {
    return Intl.message(
      'Already have an account?',
      name: 'userisLogin',
      desc: '',
      args: [],
    );
  }

  /// `Field Is Required`
  String get fieldIsRequired {
    return Intl.message(
      'Field Is Required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `You can't leave this empty`
  String get erordata {
    return Intl.message(
      'You can\'t leave this empty',
      name: 'erordata',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get setting {
    return Intl.message(
      'Settings',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arLanguage {
    return Intl.message(
      'Arabic',
      name: 'arLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get enLanguage {
    return Intl.message(
      'English',
      name: 'enLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get darkTheme {
    return Intl.message(
      'Dark',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get lightTheme {
    return Intl.message(
      'Light',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get welcomePageButton {
    return Intl.message(
      'Login',
      name: 'welcomePageButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get loginHeadText {
    return Intl.message(
      'Sign In',
      name: 'loginHeadText',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginEmail {
    return Intl.message(
      'Email',
      name: 'loginEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get loginEmailError {
    return Intl.message(
      'Enter a valid email',
      name: 'loginEmailError',
      desc: '',
      args: [],
    );
  }

  /// `Email is already in use`
  String get loginEmailIsUsedWithAnotherUser {
    return Intl.message(
      'Email is already in use',
      name: 'loginEmailIsUsedWithAnotherUser',
      desc: '',
      args: [],
    );
  }

  /// `User not registered before`
  String get userNotFound {
    return Intl.message(
      'User not registered before',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwoard {
    return Intl.message(
      'Password',
      name: 'passwoard',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get phoneNumberIsEmpty {
    return Intl.message(
      'Enter your phone number',
      name: 'phoneNumberIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid phone number`
  String get validPhoneNumber {
    return Intl.message(
      'Enter a valid phone number',
      name: 'validPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get weakPassword {
    return Intl.message(
      'Weak password',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use`
  String get emailAlreadyInUse {
    return Intl.message(
      'Email already in use',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPsswoard {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPsswoard',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwoardNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwoardNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect password`
  String get loginPasswoardError {
    return Intl.message(
      'Incorrect password',
      name: 'loginPasswoardError',
      desc: '',
      args: [],
    );
  }

  /// `Not registered yet?`
  String get userNotLogin {
    return Intl.message(
      'Not registered yet?',
      name: 'userNotLogin',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get sighnUpHeadText {
    return Intl.message(
      'Create Account',
      name: 'sighnUpHeadText',
      desc: '',
      args: [],
    );
  }

  /// `Creating account...`
  String get loadingSighnUser {
    return Intl.message(
      'Creating account...',
      name: 'loadingSighnUser',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get sighnUpUserName {
    return Intl.message(
      'Username',
      name: 'sighnUpUserName',
      desc: '',
      args: [],
    );
  }

  /// `Name is too short`
  String get wrongUserName {
    return Intl.message(
      'Name is too short',
      name: 'wrongUserName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
