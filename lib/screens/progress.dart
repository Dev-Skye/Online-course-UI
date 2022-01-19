import 'package:flutter/material.dart';

class ProgressScreen extends StatefulWidget {
  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          "Progress",
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24,
            color: Theme.of(context).accentColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              size: 24,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              height: 200,
              width: 400,
              child: Image(image: AssetImage("assets/ui33.png"))),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.purple,
                ),
              ),
              Container(
                width: 8,
              ),
              Text("Tech",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  )),
              Container(
                width: 35,
              ),
              Text(
                "82h",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                width: 80,
              ),
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.yellow,
              ),
              Container(
                width: 5,
              ),
              Text("Art",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  )),
              Container(
                width: 35,
              ),
              Text(
                "12h",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.green,
                ),
              ),
              Container(
                width: 8,
              ),
              Text("Design",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  )),
              Container(
                width: 23,
              ),
              Text(
                "19h",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                width: 80,
              ),
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.red,
              ),
              Container(
                width: 5,
              ),
              Text("Social",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  )),
              Container(
                width: 16,
              ),
              Text(
                "11h",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          Container(
            height: 25,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Text(
                  "Current Activity",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Theme.of(context).accentColor),
                ),
              ),
              Container(
                width: 80,
              ),
              Text(
                "Week",
                style: TextStyle(color: Colors.black45),
              ),
              Container(
                width: 5,
              ),
              Icon(
                Icons.arrow_downward,
                size: 10,
                color: Colors.black45,
              )
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 210,
              width: 500,
              child: Image(image: AssetImage("assets/ui4.jpg")))
        ],
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
