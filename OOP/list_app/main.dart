import 'menus.dart';
import 'navigator.dart';

void main() {
  List<int> theList = [10, 20, 30, 40];
  while (true) {
    String option = Menu().mainMenu(theList);
    Navigator().navigator(option, theList);
    print("\x1B[2J\x1B[0;0H");
  }
}
