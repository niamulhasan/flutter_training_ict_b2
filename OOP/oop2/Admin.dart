import 'dart:io';

class Admin {
  String username = "admin";
  String password = "123";
  String secret = "Admin's supper secret";

  void login() {
    print("Login as Admin:");
    print("Enter Admin Username: ");
    String? inpUsername = stdin.readLineSync();
    print("Enter Admin Password: ");
    String? inpPassword = stdin.readLineSync();
    if (inpUsername == username && inpPassword == password) {
      print("Login successful");
      print("Admin Secret: $secret");
    } else {
      print("Login Failed!");
    }
  }
}
