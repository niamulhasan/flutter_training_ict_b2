import 'dart:io';

import 'Admin.dart';
import 'Moderator.dart';
import 'User.dart';

class Router {
  void route(selectedOption) {
    if (selectedOption == "1") {
      Admin().login();
    } else if (selectedOption == "2") {
      User().login();
    } else if (selectedOption == "3") {
      Moderator().login();
    } else {
      print("Invalid Input");
    }
  }
}
