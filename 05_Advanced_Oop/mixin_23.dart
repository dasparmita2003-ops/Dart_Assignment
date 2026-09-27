// Base class
class Document {
	void display() {
		print("This is a document.");
	}
}

// Mixin
mixin Printable on Document {
	void printDocument() {
		display();
		print("Document is ready to print.");
	}
}

// Invoice class
class Invoice extends Document with Printable {
	void showInvoice() {
		print("Invoice");
		printDocument();
	}
}

// Report class
class Report extends Document with Printable {
	void showReport() {
		print("Report");
		printDocument();
	}
}

void main() {
	Invoice invoice = Invoice();
	Report report = Report();

	invoice.showInvoice();
	print("");

	report.showReport();
}
