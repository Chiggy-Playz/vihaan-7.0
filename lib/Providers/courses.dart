import 'package:dtu_hackathon/Core/Models/course.dart';
import 'package:flutter/material.dart';

class CoursesProvider extends ChangeNotifier {
  List<Course> userCourses = [];
  int selectedIndex = 0;

  void initialize() {

    // Populate user courses here
    userCourses = [
      Course(id: "p-y-t-h-o-n", name: "Python", icon: "assets/images/course_icons/python.svg"),
    ]

  }

  List<Course> getUserCourses() {
    return userCourses;
  }

  Course? getCurrentSelectedCourse() {
    return userCourses.elementAtOrNull(selectedIndex);
  }
}
