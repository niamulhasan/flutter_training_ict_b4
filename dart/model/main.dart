import 'dart:convert';

import 'models/Book.dart';

void main() {
  String rawData = '''
  [
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
    }
  ]
  ''';

  List<Book> bookList = [];
  List books = jsonDecode(rawData);

  for (var book in books) {
    Book bookOb = Book(
      int.parse(book["id"]),
      book["nameEnglish"],
      book["nameBengali"],
      int.parse(book["hadith_number"]),
      book["book_key"],
    );
    bookList.add(bookOb);
  }

  print(bookList[0]);
}
