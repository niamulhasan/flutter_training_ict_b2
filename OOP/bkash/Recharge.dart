import 'dart:io';

class Recharge {
  String seletOperatorMenu() {
    print("Select Operator: \n 1. Robi \n 2. GP");
    String? x = stdin.readLineSync();
    if (x == "1") {
      robi();
    } else if (x == "2") {
      gp();
    }
    return "Error Input";
  }

  void robi() {
    print("Enter Robi Number: ");
    String? x = stdin.readLineSync();
    print("Recharge successfull on $x");
  }

  void gp() {
    print("Enter Gp Number: ");
    String? x = stdin.readLineSync();
    print("Recharge successfull on $x");
  }
}
