import 'package:week_one_activities/activities/day4_activity2.dart';

void BookTest() {
  List<int> index = List.generate(30, (index) => index + 1);
  index.map((bookNumber) {
    var bookName = Book(
      bookName: 'Book No. ${bookNumber.toString()}',
      isbn: bookNumber,
      authorName: 'Author-${bookNumber.toString()}',
      publisher: 'Publisher @ ${bookNumber.toString()}',
    ).getBookInfo();
    print(bookName);
  }).toList();
}
