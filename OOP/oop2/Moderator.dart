import 'dart:io';

class Moderator {
  String username = "mod";
  String password = "789";
  String secret = "Mod's supper secret";

  void login() {
    print("Login as Moderator:");
    print("Enter Moderator Username: ");
    String? inpUsername = stdin.readLineSync();
    print("Enter Moderator Password: ");
    String? inpPassword = stdin.readLineSync();
    if (inpUsername == username && inpPassword == password) {
      print("Login successful");
      print("Moderator Secret: $secret");
    } else {
      print("Login Failed!");
    }
  }
}
