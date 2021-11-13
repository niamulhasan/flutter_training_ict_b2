//i am useing this as interface
abstract class Calc {
  String prop = "prop val";
  int sum(int x, int b) {
    return x + b;
  }
}

class MyConcreteClass implements Calc {}
