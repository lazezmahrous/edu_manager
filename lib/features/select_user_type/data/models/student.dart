import 'package:edu_manager/features/select_user_type/data/models/user_strategy.dart';

import 'user_type_enums.dart';

class Student implements UserStrategy {
  @override
  UserType get typeLabel => UserType.student;

  @override
  Future<void> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}

// abstraction or interface
abstract class PaymentGateway {
  void pay(double amount);
}

class VodafoneCash implements PaymentGateway {
  @override
  void pay(double amount) {
    // print("Paying $amount using Vodafone Cash");
  }
}

class FawryPayment implements PaymentGateway {
  @override
  void pay(double amount) {
    // print("Paying $amount using Fawry");
  }
}

// usage
void main() {
  // Select Payment Gateway
  PaymentGateway method1 = VodafoneCash();
  PaymentGateway method2 = FawryPayment();

  // do pay
  method1.pay(100);
  method2.pay(200);
}



class PaymentService {
  void pay(String method, double amount) {
    if (method == "vodafone") {
      print("Paying $amount using Vodafone Cash");
    } else if (method == "fawry") {
      print("Paying $amount using Fawry");
    } else {
      print("Unknown payment method");
    }
  }
}
