import 'dart:io';

class User {
  String username = "user";
  String password = "12345";
  String secret = "Secret for User";

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
