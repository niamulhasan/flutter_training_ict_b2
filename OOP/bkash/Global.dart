import 'dart:io';

import 'Cashout.dart';
import 'CheckBalance.dart';
import 'Recharge.dart';

class Global {
  String menu() {
    print("Choose an Item: \n 1. Recharge \n 2. Cashout \n 3. Check Balance");
    String? x = stdin.readLineSync();

    if (x == "1") {
      return "1";
    } else if (x == "2") {
      return "2";
    } else if (x == "3") {
      return "3";
    } else {
      return "0";
    }
  }

  void navigator(option, bal) {
    if (option == "1") {
      Recharge().seletOperatorMenu();
    } else if (option == "2") {
      Cashout().promptOptions();
    } else if (option == "3") {
      CheckBalance().show(bal);
    } else {
      //show error
    }
  }
}
