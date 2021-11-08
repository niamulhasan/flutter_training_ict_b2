class MyClass {
  String? myProp;

  MyClass() {
    print("I am a constructor");
  }

  void fun1(String a) {
    print("Fun 1 called $a");
  }

  void fun2() {
    print("fun2 called");
  }
}

void main() {
  var ob1 = MyClass();
  ob1.myProp = "value";
  print(ob1.myProp);
  ob1.fun1("hello");
}
