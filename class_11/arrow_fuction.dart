

String getInfo(int id, String key, List theList) => theList[id][key];


void main(){
  List myFamily = [
    {
      "name" : "Rahim",
      "age" : "33",
      "position" : "Father"
    },
    {
      "name" : "Karim",
      "age" : "22",
      "position" : "Brother"
    }
  ];
  
  
  print(getInfo(1, "position", myFamily));
}
