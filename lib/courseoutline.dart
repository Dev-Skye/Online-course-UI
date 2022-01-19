import 'package:flutter/material.dart';

class CourseOutline {
  final String name;
  final String time;
  final String module;
  final Color color;
  final IconData icon;

  CourseOutline({
    @required this.name,
    @required this.time,
    @required this.module,
    @required this.icon = Icons.ac_unit,
    this.color = Colors.green,
  });
}
