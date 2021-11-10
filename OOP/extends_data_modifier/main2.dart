class Base {
  String prop = "p";

  Base(String conP) {
    print("base constructor $conP");
  }

  void fun() {
    print("I am a function");
  }
}

class Boo extends Base {
  String booProp = "bp";

  Boo(String p, String nn) : super(nn) {
    print("boo constructor $p");
  }

  void booFun() {
    print("I am also a function");
  }
}

void main() {
  var ob1 = Boo("value of p", "value of conP");
}
