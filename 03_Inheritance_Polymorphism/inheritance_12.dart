// Superclass
class Person {
	String name;
	int age;

	Person(this.name, this.age);

	void displayPersonInfo() {
		print("Name: $name");
		print("Age: $age");
	}
}

// Subclass
class Employee extends Person {
	double salary;

	Employee(String name, int age, this.salary) : super(name, age);

	void displayEmployeeInfo() {
		displayPersonInfo();
		print("Salary: \$${salary.toStringAsFixed(2)}");
	}
}

void main() {
	Employee employee = Employee("Rahim", 25, 30000);

	employee.displayEmployeeInfo();
}
