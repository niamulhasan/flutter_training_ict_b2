import 'dart:io';

import 'Global.dart';

int balance = 4900;

void main() {
  String selectedMenuItem = Global().menu();
  Global().navigator(selectedMenuItem, balance);
}
