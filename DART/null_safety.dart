void main() {
  String? a = "Not default";
  String? x = "XXX";
  x ??= a;
  print(x);
}
