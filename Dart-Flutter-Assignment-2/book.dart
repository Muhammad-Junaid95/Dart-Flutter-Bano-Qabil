//Create a class named “Book” with properties such as title, author, publisher, and price. Add getter and setter methods for each property.
//Also, add a method to calculate the discount price of the book based on a given percentage.

void main(List<String> args) {
  var book1 = Book();
  book1.title = ("Dart for Absolute Beginners");
  book1.author = ("David Kopec");
  book1.publisher = ("Apress");
  book1.price = 800;

  book1.printInfo();
  book1.discPrice();
}

class Book {
  var _title;
  var _author;
  var _publisher;
  var _price;

  set title(String title) {
    _title = title;
  }

  String get title {
    return _title;
  }

  set author(String author) {
    _author = author;
  }

  String get author {
    return _author;
  }

  set publisher(String publisher) {
    _publisher = publisher;
  }

  String get publisher {
    return _publisher;
  }

  set price(double price) {
    if (price <= 0) {
      throw Exception("System Error");
    }
    _price = price;
  }

  double get price {
    return _price;
  }

  void printInfo() {
    print("\nBook Title: $title");
    print("Book Author: $author");
    print("Book Publisher: $publisher");
    print("Book Price: \$$price");
  }

  void discPrice() {
    var disc = price / 100 * 50;
    var afterDiscount = price - disc;
    print("\nDiscounted Price: \$$afterDiscount\n");
  }
}
