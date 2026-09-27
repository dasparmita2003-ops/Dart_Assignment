// First interface
class Flyable {
	void fly() {
		print("Can fly.");
	}
}

// Second interface
class Swimmable {
	void swim() {
		print("Can swim.");
	}
}

// Duck implements multiple interfaces
class Duck implements Flyable, Swimmable {
	@override
	void fly() {
		print("Duck is flying.");
	}

	@override
	void swim() {
		print("Duck is swimming.");
	}
}

void main() {
	Duck duck = Duck();

	duck.fly();
	duck.swim();
}
