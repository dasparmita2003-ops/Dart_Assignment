// Mixin
mixin LoggerMixin {
	void logMessage(String message) {
		print("LOG: $message");
	}
}

// User class using the mixin
class User with LoggerMixin {
	String name;

	User(this.name);

	void showUser() {
		logMessage("User created: $name");
	}
}

// Product class using the mixin
class Product with LoggerMixin {
	String productName;

	Product(this.productName);

	void showProduct() {
		logMessage("Product created: $productName");
	}
}

void main() {
	User user = User("Rahim");
	Product product = Product("Laptop");

	user.showUser();
	product.showProduct();
}
