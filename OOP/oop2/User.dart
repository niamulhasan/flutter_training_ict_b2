import 'dart:io';

class User {
  String username = "user";
  String password = "456";
  String secret = "Users's supper secret";

  void login() {
    print("Login as user:");
    print("Enter User Username: ");
    String? inpUsername = stdin.readLineSync();
    print("Enter User Password: ");
    String? inpPassword = stdin.readLineSync();
    if (inpUsername == username && inpPassword == password) {
      print("Login successful");
      print("User Secret: $secret");
    } else {
      print("Login Failed!");
    }
  }
}
