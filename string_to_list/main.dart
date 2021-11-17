import 'dart:convert';

void main() {
  String dataString = '''[
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
    "book_key": "abuDaud"
  },
  {
    "id": "9",
    "nameEnglish": "Sunan'e Ibn Majah",
    "nameBengali": "সুনানে ইবনে মাজাহ",
    "lastUpdate": "2015-02-02",
    "isActive": "1",
    "priority": "7",
    "publisherId": "5",
    "section_number": "32",
    "hadith_number": "4341",
    "book_key": "ibnMajah"
  },
  {
    "id": "11",
    "nameEnglish": "Jami Tirmidi",
    "nameBengali": "সূনান তিরমিজী (ইফাঃ)",
    "lastUpdate": "2015-10-19",
    "isActive": "1",
    "priority": "5",
    "publisherId": "1",
    "section_number": "52",
    "hadith_number": "3606",
    "book_key": "tirmidi"
  },
  {
    "id": "12",
    "nameEnglish": "Sahih Bukhari (Tawhid)",
    "nameBengali": "সহীহ বুখারী (তাওহীদ)",
    "lastUpdate": "2015-02-02",
    "isActive": "1",
    "priority": "1",
    "publisherId": "3",
    "section_number": "97",
    "hadith_number": "7563",
    "book_key": ""
  },
  {
    "id": "13",
    "nameEnglish": "Sahih Hadith'e Qudsi",
    "nameBengali": "সহিহ হাদিসে কুদসি",
    "lastUpdate": "2015-02-02",
    "isActive": "1",
    "priority": "13",
    "publisherId": "6",
    "section_number": "1",
    "hadith_number": "163",
    "book_key": ""
  },
  {
    "id": "14",
    "nameEnglish": "40 Hadith Nawawi",
    "nameBengali": "আন্‌-নওয়াবীর চল্লিশ হাদীস",
    "lastUpdate": "2015-02-02",
    "isActive": "1",
    "priority": "12",
    "publisherId": "6",
    "section_number": "1",
    "hadith_number": "42",
    "book_key": ""
  },
  {
    "id": "15",
    "nameEnglish": "Jal & Daif hadith ragarding ramadan",
    "nameBengali": "রমযান বিষয়ে জাল ও দুর্বল হাদিসসমূহ",
    "lastUpdate": "2015-02-02",
    "isActive": "1",
    "priority": "14",
    "publisherId": "6",
    "section_number": "1",
    "hadith_number": "34",
    "book_key": ""
  },
  {
    "id": "18",
    "nameEnglish": "Al-lulu",
    "nameBengali": "আল-লুলু ওয়াল মারজান",
    "lastUpdate": "2015-04-22",
    "isActive": "1",
    "priority": "9",
    "publisherId": "3",
    "section_number": "12",
    "hadith_number": "555",
    "book_key": ""
  },
  {
    "id": "19",
    "nameEnglish": "Att Tirmidi",
    "nameBengali": "সূনান আত তিরমিজী [তাহকীককৃত]",
    "lastUpdate": "2015-10-19",
    "isActive": "1",
    "priority": "4",
    "publisherId": "2",
    "section_number": "46",
    "hadith_number": "3961",
    "book_key": ""
  },
  {
    "id": "20",
    "nameEnglish": "Al-Adabul Mufrad",
    "nameBengali": "আল-আদাবুল মুফরাদ",
    "lastUpdate": "2016-02-15",
    "isActive": "1",
    "priority": "10",
    "publisherId": "9",
    "section_number": "22",
    "hadith_number": "1336",
    "book_key": ""
  },
  {
    "id": "21",
    "nameEnglish": "Sunan Ad-Daremi",
    "nameBengali": "সুনান আদ-দারেমী",
    "lastUpdate": "2016-02-19",
    "isActive": "1",
    "priority": "8",
    "publisherId": "5",
    "section_number": "1",
    "hadith_number": "79",
    "book_key": ""
  },
  {
    "id": "22",
    "nameEnglish": "sahih muslim",
    "nameBengali": "সহীহ মুসলিম (হাঃ একাডেমী)",
    "lastUpdate": "2016-03-30",
    "isActive": "1",
    "priority": "3",
    "publisherId": "10",
    "section_number": "58",
    "hadith_number": "7493",
    "book_key": "muslimHA"
  },
  {
    "id": "23",
    "nameEnglish": "Sahih Shamayele Tirmidi",
    "nameBengali": "সহীহ শামায়েলে তিরমিযী",
    "lastUpdate": "2016-04-13",
    "isActive": "1",
    "priority": "5",
    "publisherId": "11",
    "section_number": "56",
    "hadith_number": "322",
    "book_key": ""
  }
]''';

  List decodedData = jsonDecode(dataString);

  print(decodedData[0]['nameEnglish']);
}
