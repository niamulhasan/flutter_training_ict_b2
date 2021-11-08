import 'dart:io';

class ListOperation {
  void append(List theList) {
    print("Insert The Element: ");
    int element = int.parse(stdin.readLineSync()!);
    theList.add(element);
    print("Item Added!");
  }

  void insert(List theList) {
    print("Index Number: ");
    int index = int.parse(stdin.readLineSync()!);
    print("Element: ");
    int element = int.parse(stdin.readLineSync()!);
    theList.insert(index, element);
    print("Item Inserted!");
  }

  void remove(List<int> theList, int index) {
    theList.remove(theList[index]);
    print("Item Removed");
  }
}
