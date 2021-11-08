import 'dart:io';

class User {
  String? name;
  String? password;
  String? email;

  User(this.name, this.password, this.email);

  void showProfile() {
    print("${this.name}\n ${this.email}");
  }

  bool login() {
    print("Enter Name: ");
    String? inpName = stdin.readLineSync();
    print("Enter Passoword: ");
    String? inpPass = stdin.readLineSync();
    if (inpName == this.name && inpPass == this.password) {
      print("Success");
      return true;
    }
    print("Failed");
    return false;
  }
}

void main() {
  var user1 = User("rahim", "123", "user@email.com");
  user1.showProfile();

  var user2 = User("name", "pass", "email");
  user2.showProfile();
}
