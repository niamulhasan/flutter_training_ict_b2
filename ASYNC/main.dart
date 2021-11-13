Future<String> loadData() {
  return Future.delayed(Duration(seconds: 3), () {
    //print("Second line");
    return "data loaded";
  });
}

void main() async {
  String a = await loadData();
  print(a.runtimeType);
}
