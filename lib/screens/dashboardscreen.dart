import 'package:flutter/material.dart';
import 'package:ui_project/screens/courselist.dart';
import 'package:ui_project/screens/progress.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 0),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: 20,
                        child: Text(
                          "Hello",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Text(
                          "ESTHER HOWARD",
                          style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.redAccent,
                          image: DecorationImage(
                              image: AssetImage("assets/pics2.png"),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 0, left: 25, bottom: 20, right: 25),
                      width: 400,
                      height: 200,
                      child: Image(
                        image: AssetImage("assets/ui22.png"),
                        fit: BoxFit.fill,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 50),
                      child: Text(
                        "Upgrade to a \npro plan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 120),
                      child: Row(
                        children: [
                          Text(
                            "Get connect with ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          Text(
                            "+400k",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 140),
                      child: Text(
                        "best Mentors",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 280),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100, left: 250),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white38),
                      child: Icon(
                        Icons.file_present,
                        color: Theme.of(context).accentColor,
                        size: 18,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 300),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(
                        Icons.connect_without_contact_sharp,
                        color: Theme.of(context).accentColor,
                        size: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 330,
                  height: 55,
                  margin: EdgeInsets.only(left: 25, right: 25, top: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text(
                        "   Find your course",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 40),
                  child: Text(
                    "Last seen courses",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).accentColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 300,
                  child: CourseList(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: Icon(
                Icons.home,
                color: Theme.of(context).accentColor,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: Icon(
                Icons.bar_chart,
                color: Theme.of(context).accentColor,
              ),
              label: "Chart"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: Icon(
                Icons.assessment,
                color: Theme.of(context).accentColor,
              ),
              label: "Assessment"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white70,
              icon: Icon(
                Icons.calendar_today,
                color: Theme.of(context).accentColor,
              ),
              label: "Calendar")
        ],
      ),
    );
  }
}
