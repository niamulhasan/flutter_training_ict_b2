import 'dart:convert';

class Book {
  int? id;
  String? englishName;
  String? banglaName;
  String? key;

  Book(this.id, this.englishName, this.banglaName, this.key);
}

void main() {
  List<Book> bookList = [];

  String rawData = '''[
    {
      "id": "1",
      "nameEnglish": "Sahih Bukhari (IFA)",
      "nameBengali": "সহীহ বুখারী (ইফাঃ)",
      "lastUpdate": "2015-02-21",
      "isActive": "1",
      "priority": "2",
      "publisherId": "1",
      "section_number": "86",
      "hadith_number": "7053",
      "book_key": "bukhari"
    },
    {
      "id": "2",
      "nameEnglish": "Sahih Muslim (IFA)",
      "nameBengali": "সহীহ মুসলিম (ইফাঃ)",
      "lastUpdate": "2015-02-21",
      "isActive": "1",
      "priority": "3",
      "publisherId": "1",
      "section_number": "57",
      "hadith_number": "7283",
      "book_key": "muslim"
    },
    {
      "id": "3",
      "nameEnglish": "Riyajus Saolehin",
      "nameBengali": "রিয়াযুস স্বা-লিহীন",
      "lastUpdate": "2015-02-02",
      "isActive": "1",
      "priority": "9",
      "publisherId": "3",
      "section_number": "20",
      "hadith_number": "1906",
      "book_key": "riyadusSalihin"
    },
    {
      "id": "4",
      "nameEnglish": "Sunan Abu Daud (IFA)",
      "nameBengali": "সূনান আবু দাউদ (ইফাঃ)",
      "lastUpdate": "2015-10-19",
      "isActive": "1",
      "priority": "4",
      "publisherId": "1",
      "section_number": "38",
      "hadith_number": "5185",
      "book_key": ""
    }
  ]''';

  List listCnv = jsonDecode(rawData);

  for (var listItem in listCnv) {
    Book book = Book(int.parse(listItem["id"]), listItem["nameEnglish"],
        listItem["nameBengali"], listItem["book_key"]);

    bookList.add(book);
  }

  print(bookList[0].englishName);
}
