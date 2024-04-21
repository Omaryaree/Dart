// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printStudentInfo() {
    print('Student: $name\nAge: $age\nGrade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printTeacherInfo() {
    print('Teacher: $name\nAge: $age\nSubject: $subject');
  }
}

// Third class to create student and teacher objects and call methods
class School {
  void printSchoolInfo(Student student, Teacher teacher) {
    print('School Information:');
    student.printStudentInfo();
    print('\n');
    teacher.printTeacherInfo();
  }
}

void main() {
  // Create student object
  var student = Student('John Doe', 16, '10th Grade');

  // Create teacher object
  var teacher = Teacher('Mrs. Smith', 35, 'Mathematics');

  // Create school object
  var school = School();

  // Call method to print student and teacher information
  school.printSchoolInfo(student, teacher);
}
