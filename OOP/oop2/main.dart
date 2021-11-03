import 'dart:io';
import 'Router.dart';
import 'Utils.dart';

void main() {
  String selectedOption = Utils().mainMenu();
  Router().route(selectedOption);

  //   var admin1_g = Admin();
  // admin1_g.username = "admin1";
  // admin1_g.password = "000";
  // admin1_g.login();

  // Map admin1 = {
  //   "username": "admin1",
  //   "password": "000",
  //   "login": () => "",
  // };

  // var admin2_g = Admin();
  // admin2_g.username = "boo";
  // admin2_g.password = "foo";

  // Map admin2 = {
  //   "username": "boo",
  //   "password": "foo",
  //   "login": () => "",
  // };
}
