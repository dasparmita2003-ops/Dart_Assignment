class Employee {
	String name;
	String designation;
	double salary;

	Employee(this.name, this.designation, this.salary);

	void displayInfo() {
		print("Name: $name");
		print("Designation: $designation");
		print("Salary: $salary");
		print("--------------------");
	}
}

void main() {
	Employee employee1 = Employee("Alice", "Manager", 50000);
	Employee employee2 = Employee("Bob", "Developer", 40000);
	Employee employee3 = Employee("Charlie", "Designer", 35000);

	List<Employee> employees = [employee1, employee2, employee3];

	for (Employee employee in employees) {
		employee.displayInfo();
	}
}
