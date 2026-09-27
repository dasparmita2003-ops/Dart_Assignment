T findLargest<T extends num>(T value1, T value2) {
	return value1 > value2 ? value1 : value2;
}

void main() {
	print("Largest integer: ${findLargest<int>(10, 20)}");
	print("Largest double: ${findLargest<double>(15.5, 12.5)}");
}
