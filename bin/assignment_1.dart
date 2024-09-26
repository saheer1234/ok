class Book {
  static int totalBooks = 0;

  String title;
  String author;
  int publicationYear;
  int pagesRead;

  Book(this.title,this.author,this.publicationYear) : pagesRead = 0;

 void read(int pages){
pagesRead += pages;
  }

 int getPagesRead(){
    return pagesRead;
  }
  String getTitle(){
    return title;
}

String getAuthor(){
    return author;
}

int getPublicationYear(){
    return publicationYear;
}

int getBookAge(){
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
}
}

void main(){
  Book book1 = Book('life of saheer','saheer',2022);
  Book book2 = Book('the lean startup','eric ries',1992);
  Book book3 = Book('half way','fahim',1999);

  book1.read(22);
  book2.read(44);
  book3.read(66);

  for (var book in [book1,book2,book3]){
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()}');
  }

print('Total number of Book objects created: ${Book.totalBooks}');
}