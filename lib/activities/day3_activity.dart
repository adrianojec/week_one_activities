class Student {
  final String firstName;
  final String lastName;
  int? grade;

  Student({
    required this.firstName,
    required this.lastName,
    this.grade,
  });

  String formattedName() {
    final String printFirstName = firstName.toUpperCase().substring(0, 1) +
        firstName.toLowerCase().substring(1);
    final String printLastName = lastName.toUpperCase().substring(0, 1) +
        lastName.toLowerCase().substring(1);
    final String fullName = printLastName + ', ' + printFirstName;
    return fullName;
  }

  @override
  String toString() => 'Fullname: ${formattedName()} | Grade: $grade';
}

void main() {
  var studentOne = Student(
    firstName: 'luna',
    lastName: 'Cruz',
    grade: 95,
  );
  var studentTwo = Student(
    firstName: 'liam',
    lastName: 'torrez',
    grade: 85,
  );

  studentTwo.grade = 98;

  print(studentOne);
  print(studentTwo);
}
