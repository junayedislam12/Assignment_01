class Book {
  static int totalBooks = 0;
  String title;
  String author;
  int publicationYear;
  int pageRead = 0;

  Book(this.title, this.author, this.publicationYear) {
    totalBooks++;
  }

  int read(int pages) {
    pageRead += pages;
    return pageRead;
  }

  int getPagesRead() {
    return pageRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = 2024;
    return currentYear - publicationYear;
  }
}

void main() {
  Book bookOne = Book("Pather Pachali", "Bibhutibhushan Bandypadhyay", 1929);
  Book bookTwo = Book("Gitanjali", "Rabindranth Thakor", 1912);
  Book bookThree = Book("Porinita", "Sarat Chandro Chattopadhyay", 1865);
  Book bookFour = Book("Shesher Kobita", "Rabindranth Thakor", 1929);

  bookOne.read(12);
  bookTwo.read(97);
  bookThree.read(09);
  bookFour.read(14);
  for (var book in [bookOne, bookTwo, bookThree, bookFour]) {
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years\n");
  }
  print("Total Number Of Books Created: ${Book.totalBooks}");
}
