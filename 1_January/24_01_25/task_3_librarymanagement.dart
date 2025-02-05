enum BookStatus { available, checkedOut, reserved }

class Book {
  int id;
  String title;
  BookStatus status;
  String? borrower;

  Book({
    required this.id,
    required this.title,
    this.status = BookStatus.available,
    this.borrower,
  });

  void checkOut(String borrower) {
    if (status != BookStatus.available) {
      print('Book is not available for checkout.');
    } else {
      status = BookStatus.checkedOut;
      this.borrower = borrower;
      print('Book checked out to $borrower.');
    }
  }

  void reserve() {
    if (status != BookStatus.available) {
      print('Book is not available for reservation.');
    } else {
      status = BookStatus.reserved;
      print('Book reserved.');
    }
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void displayBookStatus() {
    for (var book in books) {
      print('ID: ${book.id}, Title: ${book.title}, Status: ${book.status}');
      if (book.status == BookStatus.checkedOut) {
        print('Borrower: ${book.borrower}');
      }
    }
  }
}

void main() {
  var library = Library();

  // Add some books
  library.addBook(Book(id: 1, title: 'The Lord of the Rings'));
  library.addBook(Book(id: 2, title: 'The Hitchhiker\'s Guide to the Galaxy'));

  // Check out a book
  library.books[0].checkOut('John Doe');

  // Reserve a book
  library.books[1].reserve();

  // Display book statuses
  library.displayBookStatus();
}
