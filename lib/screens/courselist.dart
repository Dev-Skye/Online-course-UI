import 'package:flutter/material.dart';
import 'package:ui_project/courseoutline.dart';
import 'package:ui_project/screens/progress.dart';

class CourseList extends StatefulWidget {
  // ignore: non_constant_identifier_names
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  final List<CourseOutline> CourseOutlines = [
    CourseOutline(
        name: "Mobile Design",
        time: "27 hours",
        module: "50 modules",
        color: Color(0xFF00aa00),
        icon: Icons.code_sharp),
    CourseOutline(
      name: "Operating Systems",
      time: "11 hours",
      module: "27 modules",
      color: Colors.deepPurple,
      icon: Icons.laptop,
    ),
    CourseOutline(
      name: "Ux Research",
      time: "16 hours",
      module: "12 modules",
      color: Colors.deepOrange,
      icon: Icons.people,
    ),
    CourseOutline(
      name: "Web Design",
      time: "23 hours",
      module: "20 modules",
      color: Colors.blue,
      icon: Icons.design_services,
    ),
    CourseOutline(
      name: "Networking",
      time: "35 hours",
      module: "32 modules",
      color: Colors.lime,
      icon: Icons.people,
    ),
    CourseOutline(
      name: "Digital Marketing",
      time: "40 hours",
      module: "35 modules",
      color: Colors.indigo,
      icon: Icons.design_services,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, i) => ListTile(
        leading: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CourseOutlines[i].color),
              child: Container(
                width: 30,
                height: 30,
                child: Icon(
                  CourseOutlines[i].icon,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        title: Text(
          CourseOutlines[i].name,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor),
        ),
        subtitle: Row(
          children: [
            Text(
              CourseOutlines[i].time,
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            Container(width: 5),
            Icon(
              Icons.circle,
              size: 6,
              color: Theme.of(context).accentColor,
            ),
            Container(
              width: 5,
            ),
            Text(
              CourseOutlines[i].module,
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        trailing: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black26,
          ),
          child: InkWell(
            child: Icon(
              Icons.play_arrow,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProgressScreen()));
            },
          ),
        ),
      ),
      itemCount: CourseOutlines.length,
    );
  }
}
