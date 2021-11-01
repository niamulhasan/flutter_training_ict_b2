import 'dart:io';

class Cashout {
  void promptOptions() {
    print("Enter agent number: ");
    String? x = stdin.readLineSync();
    print("Enter amount: ");
    String? y = stdin.readLineSync();
    print("Cashout successful from $x, \n Amount: $y");
  }
}
