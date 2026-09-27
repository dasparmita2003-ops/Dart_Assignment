class Customer {
	final String name;
	final int id;

	const Customer(this.name, this.id);

	void displayInfo() {
		print("Customer Name: $name");
		print("Customer ID: $id");
	}
}

void main() {
	const Customer customer1 = Customer("Alice", 101);

	customer1.displayInfo();
}
