// Superclass
class Shape {
	void area() {
		print("Area of shape.");
	}
}

// Child class: Rectangle
class Rectangle extends Shape {
	double length;
	double width;

	Rectangle(this.length, this.width);

	@override
	void area() {
		double result = length * width;
		print("Area of Rectangle: $result");
	}
}

// Child class: Circle
class Circle extends Shape {
	double radius;

	Circle(this.radius);

	@override
	void area() {
		double result = 3.1416 * radius * radius;
		print("Area of Circle: ${result.toStringAsFixed(2)}");
	}
}

void main() {
	Rectangle rectangle = Rectangle(10, 5);
	Circle circle = Circle(7);

	rectangle.area();
	circle.area();
}
