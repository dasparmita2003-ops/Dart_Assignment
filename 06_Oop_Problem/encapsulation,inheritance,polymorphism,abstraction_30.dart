// Abstract class - Abstraction
abstract class Person {
	String name;

	Person(this.name);

	// Abstract method
	void displayInfo();
}

// Student inherits from Person
class Student extends Person {
	int studentId;

	// Encapsulation
	double _cgpa = 0.0;

	Student(String name, this.studentId) : super(name);

	// Setter
	set cgpa(double value) {
		if (value >= 0 && value <= 4.0) {
			_cgpa = value;
		} else {
			print("Invalid CGPA");
		}
	}

	// Getter
	double get cgpa => _cgpa;

	// Polymorphism - overriding
	@override
	void displayInfo() {
		print("Student Name: $name");
		print("Student ID: $studentId");
		print("CGPA: $_cgpa");
	}
}

// Course class
class Course {
	String courseCode;
	String courseName;

	Course(this.courseCode, this.courseName);

	void displayCourse() {
		print("Course Code: $courseCode");
		print("Course Name: $courseName");
	}
}

// Enrollment class
class Enrollment {
	Student student;
	Course course;

	Enrollment(this.student, this.course);

	void showEnrollment() {
		print("\n--- Enrollment Information ---");
		print("Student: ${student.name}");
		print("Course: ${course.courseName}");
		print("Course Code: ${course.courseCode}");
	}
}

void main() {
	// Create Student object
	Student student = Student("Shelly", 101);

	// Set CGPA using setter
	student.cgpa = 3.75;

	// Create Course object
	Course course = Course("CSE101", "Object Oriented Programming");

	// Create Enrollment object
	Enrollment enrollment = Enrollment(student, course);

	print("--- Student Information ---");

	// Polymorphism
	student.displayInfo();

	print("\n--- Course Information ---");
	course.displayCourse();

	// Enrollment
	enrollment.showEnrollment();
}
