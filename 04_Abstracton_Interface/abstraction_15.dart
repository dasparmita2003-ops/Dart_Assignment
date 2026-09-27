// Abstract class
abstract class Shape {
	// Abstract method
	double calculateArea();
}

// Child class
class Square extends Shape {
	double side;

	Square(this.side);

	@override
	double calculateArea() {
		return side * side;
	}
}

void main() {
	Square square = Square(5);

	print("Side of Square: ${square.side}");
	print("Area of Square: ${square.calculateArea()}");
}
