

class Book {
  final String name;

  const Book({
    required this.name
  });
}

List<Book> getBookingValues(){
  return [
    Book(name: "Push Notification"),
    Book(name: "Blocker Integration"),
    Book(name: "Flutter Developer"),
    Book(name: "Fix Code Bugs"),
    Book(name: "Bloc Arch"),
    Book(name: "Facebook Integration"),
  ];
}