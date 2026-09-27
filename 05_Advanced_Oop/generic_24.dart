// Generic class
class Box<T> {
	T value;

	Box(this.value);

	void display() {
		print("Value: $value");
	}
}

void main() {
	Box<int> numberBox = Box<int>(100);
	Box<String> textBox = Box<String>("Hello");
	Box<double> priceBox = Box<double>(99.50);

	numberBox.display();
	textBox.display();
	priceBox.display();
}
