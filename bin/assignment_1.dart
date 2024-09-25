class Book {
  static int totalBooks

  String title;
  String author;
  int publicationYear;
  int pagesRead;

  Book(this.title,this.author,this.publicationYear) : pagesRead = 0 {
  }

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
