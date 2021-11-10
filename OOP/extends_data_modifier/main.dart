import 'dart:io';

abstract class User {
  String? name = "default";
  String? password = "pass";

  User(this.name, this.password);

  void login() {
    print("Enter Name: ");
    String? n = stdin.readLineSync();
    print("Enter password: ");
    String? p = stdin.readLineSync();

    if (this.name == n && this.password == p) {
      print("Success");
    } else {
      print("Failed");
    }
  }

  void test() {
    print("default testing");
  }
}

class Buyer extends User {
  Buyer(n, p) : super(n, p);

  void buy() {
    print("Buying");
  }
}

class Admin extends User {
  Admin(n, p) : super(n, p);
  void deleteProduct() {
    print("Deleting product");
  }

  @override
  void test() {
    print("Testing overriding for admin");
  }
}

void main() {
  var b1 = Buyer("buyer1", "123");
  print(b1.name);
}
