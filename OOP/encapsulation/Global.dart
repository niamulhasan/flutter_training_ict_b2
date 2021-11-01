import 'dart:io';

import 'Admin.dart';
import 'User.dart';

class Global {
  void loginChoose() {
    print("Enter \n 1 - for logging as admin \n 2 - for logging as user");
    String? x = stdin.readLineSync();
    if (x == "1") {
      Admin().loginForm();
    } else if (x == "2") {
      User().loginForm();
    } else {
      print("Invalid input");
    }
  }
}
