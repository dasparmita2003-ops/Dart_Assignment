// Parent class
class Person {
	String name;

	Person(this.name);
}

// Member inherits from Person
class Member extends Person {
	int memberId;

	Member(String name, this.memberId) : super(name);

	void showMemberInfo() {
		print("Member Name: $name");
		print("Member ID: $memberId");
	}
}

// Book class
class Book {
	String title;
	String author;

	// Encapsulation: private variable
	bool _isIssued = false;

	Book(this.title, this.author);

	// Getter
	bool get isIssued => _isIssued;

	void issueBook() {
		if (!_isIssued) {
			_isIssued = true;
			print("$title has been issued.");
		} else {
			print("$title is already issued.");
		}
	}

	void returnBook() {
		if (_isIssued) {
			_isIssued = false;
			print("$title has been returned.");
		} else {
			print("$title was not issued.");
		}
	}
}

// Library class
class Library {
	String name;
	List<Book> books = [];

	Library(this.name);

	void addBook(Book book) {
		books.add(book);
		print("${book.title} added to the library.");
	}

	void issueBook(Book book) {
		book.issueBook();
	}

	void returnBook(Book book) {
		book.returnBook();
	}
}

void main() {
	Library library = Library("City Library");

	Book book1 = Book("Dart Programming", "John Smith");
	Book book2 = Book("OOP Concepts", "David");

	Member member = Member("Shelly", 101);

	library.addBook(book1);
	library.addBook(book2);

	print("\nMember Information:");
	member.showMemberInfo();

	print("\nBook Operations:");
	library.issueBook(book1);
	library.issueBook(book1);
	library.returnBook(book1);
}
