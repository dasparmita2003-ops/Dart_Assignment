// Parent class
class Person {
	void displayInfo() {
		print("This is a person.");
	}
}

// Child class: Teacher
class Teacher extends Person {
	@override
	void displayInfo() {
		print("Teacher: Teaches students and provides guidance.");
	}
}

// Child class: Student
class Student extends Person {
	@override
	void displayInfo() {
		print("Student: Attends classes and completes assignments.");
	}
}

void main() {
	Person person = Person();
	Teacher teacher = Teacher();
	Student student = Student();

	person.displayInfo();
	teacher.displayInfo();
	student.displayInfo();
}
