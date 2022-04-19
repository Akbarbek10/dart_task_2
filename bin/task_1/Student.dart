class Student{
  String? _name;
  int? _course;
  String? _faculty;
  int? _age;


  String? get getName => _name;

  int? get getCourse => _course;

  String? get getFaculty => _faculty;

  int? get getAge => _age;

  set setName(String value) {
    _name = value;
  }

  set setCourse(int value) {
    _course = value;
  }

  set setFaculty(String value) {
    _faculty = value;
  }

  set setAge(int value) {
    _age = value;
  }

}