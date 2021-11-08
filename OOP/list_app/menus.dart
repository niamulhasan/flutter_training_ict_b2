import 'dart:io';

import 'list_operations.dart';
import 'navigator.dart';

class Menu {
  String mainMenu(List<int> theList) {
    print("The List: $theList");
    print(
        " 1. Insert Element\n 2. Remove Element\n 3. Modify Element \nChoose an option: ");
    String? option = stdin.readLineSync();
    return option ?? "0";
  }

  String insertMenu(List<int> theList) {
    print(" 1. Insert at End\n 2. Insert at index\nChoose an option: ");
    String? option = stdin.readLineSync();
    Navigator().insertNavigator(option, theList);
    return option ?? "0";
  }

  void removeMenu(List<int> theList) {
    print("Index Number: ");
    int index = int.parse(stdin.readLineSync()!);
    ListOperation().remove(theList, index);
  }

  void modifyMenu(List<int> theList) {
    print("Index Number: ");
    int index = int.parse(stdin.readLineSync()!);
    print("New Data: ");
    int element = int.parse(stdin.readLineSync()!);
    theList[index] = element;
    print("Item Modified!");
  }
}
