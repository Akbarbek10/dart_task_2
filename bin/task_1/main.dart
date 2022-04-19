import 'Student.dart';

void main(List<String> arguments) {
  Student student = Student();
  student.setName = "Mike";
  student.setCourse = 3;
  student.setAge = 20;
  student.setFaculty = "faculty name";


  print(student.getName);
  print(student.getCourse);
  print(student.getAge);
  print(student.getFaculty);

}




