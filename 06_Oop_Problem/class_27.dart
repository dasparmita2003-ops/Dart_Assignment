// Parent class
class Company {
	String name;

	Company(this.name);

	double calculateSalary() {
		return 0;
	}
}

// Manager subclass
class Manager extends Company {
	double basicSalary;
	double bonus;

	Manager(String name, this.basicSalary, this.bonus) : super(name);

	@override
	double calculateSalary() {
		return basicSalary + bonus;
	}

	void display() {
		print("Manager: $name");
		print("Monthly Salary: \$${calculateSalary()}");
	}
}

// Developer subclass
class Developer extends Company {
	double basicSalary;
	double allowance;

	Developer(String name, this.basicSalary, this.allowance) : super(name);

	@override
	double calculateSalary() {
		return basicSalary + allowance;
	}

	void display() {
		print("Developer: $name");
		print("Monthly Salary: \$${calculateSalary()}");
	}
}

void main() {
	Manager manager = Manager("Rahim", 50000, 10000);
	Developer developer = Developer("Karim", 40000, 5000);

	manager.display();
	print("");
	developer.display();
}
