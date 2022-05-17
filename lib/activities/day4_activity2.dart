class Book {
  final String bookName;
  final int isbn;
  final String authorName;
  final String publisher;

  const Book({
    required this.bookName,
    required this.isbn,
    required this.authorName,
    required this.publisher,
  });

  String getBookInfo() {
    return 'BOOK DESCRIPTION\n'
        'Book Name: ${this.bookName}\n'
        'ISBN: ${this.isbn}\n'
        'Author: ${this.authorName}\n'
        'Publisher: ${this.publisher}\n';
  }
}
