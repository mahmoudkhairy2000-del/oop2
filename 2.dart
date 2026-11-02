  class Person {
  String name;
  String address;

  Person(this.name, this.address);

@override
  String toString() {
    // TODO: implement toString
    return 'name = $name , Address = $address';
  }
  }


  class Student extends Person {
    int numCourses = 0;
    List<String> courses = [];
    List<int> grades = [];

    Student(String name, String address) : super(name, address);

    void addCourseGrade(String course, int grade) {
      courses.add(course);
      grades.add(grade);
      numCourses++;
    }

    void printGrades() {
      print(grades);
    }

    double getAverageGrades() {
      if (grades.isEmpty) {
        return 0.0;
      }
      int sum = 0;
      for (int i = 0; i < grades.length; i++) {
        sum += grades[i];
      }
      return sum / grades.length;
    }

    @override
    String toString() {
      return 'Student: $name, $address, Courses: $numCourses';
    }
  }
  class Teacher extends Person {
    int numCourses = 0;
    List<String> courses = [];

    Teacher(String name, String address) : super(name, address);

    bool addCourse(String course) {
      if (courses.contains(course)) {
        return false;
      }

      courses.add(course);
      numCourses++;

      return true;
    }

    bool removeCourse(String course) {
      if (!courses.contains(course)) {
        return false;
      }
      courses.remove(course);
      numCourses--;
      return true;
    }

    @override
    String toString() {
      return 'Teacher: $name, $address, Courses: $numCourses';
    }
  }