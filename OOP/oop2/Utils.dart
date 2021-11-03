import 'dart:io';

class Utils {
  String mainMenu() {
    print("Login As: \n 1. Admin \n 2. User \n 3. Moderator.");
    String? x = stdin.readLineSync();
    if (x == "1" || x == "2" || x == "3") {
      return x!;
    }
    return "Error";
  }
}
