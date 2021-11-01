import 'dart:io';

class Admin {
  String username = "admin";
  String password = "12345";
  String secret = "Secret for Admin";

  void login(inputName, inputPassword) {
    if (username == inputName && password == inputPassword) {
      print("Login Sccessfull");
      print(secret);
    } else {
      print("Login failed!");
    }
  }

  void loginForm() {
    print("Enter name: ");
    String? a = stdin.readLineSync();
    print("Enter your password");
    String? b = stdin.readLineSync();
    login(a, b);
  }
}
