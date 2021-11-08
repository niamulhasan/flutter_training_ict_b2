import 'list_operations.dart';
import 'menus.dart';

class Navigator {
  void navigator(String option, List<int> theList) {
    if (option == "1") {
      Menu().insertMenu(theList);
    } else if (option == "2") {
      Menu().removeMenu(theList);
    } else if (option == "3") {
      Menu().modifyMenu(theList);
    } else {
      print("Invalid Menu");
    }
  }

  void insertNavigator(String? option, List theList) {
    if (option == "1") {
      ListOperation().append(theList);
    } else if (option == "2") {
      ListOperation().insert(theList);
    }
  }
}
