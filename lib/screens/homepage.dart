import 'package:flutter/material.dart';
import 'package:ui_project/screens/dashboardscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Image(
            image: AssetImage("assets/ui1.jpg"),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 150),
            child: Text(
              "Syncline",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120, left: 50),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Icon(Icons.notifications_outlined,
                color: Theme.of(context).accentColor),
          ),
          Container(
            margin: EdgeInsets.only(top: 220, left: 100, right: 30),
            child: Column(
              children: [
                Text(
                  "Quick and \n Effective",
                  style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 300),
                padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Text(
                  "The world's frist opportunity to  \n learn new skills in a flexible \n methodology for all",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Theme.of(context).accentColor,
                      size: 10,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.circle,
                      color: Theme.of(context).accentColor,
                      size: 10,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Icon(
                      Icons.circle,
                      color: Theme.of(context).accentColor,
                      size: 10,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 400),
            height: 1200,
            width: 700,
            child: Image(
              image: AssetImage("assets/pics.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 470, left: 280),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white38),
            child: Icon(
              Icons.alarm,
              color: Theme.of(context).accentColor,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 530, left: 250),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            child: Icon(
              Icons.calendar_today_outlined,
              color: Theme.of(context).accentColor,
              size: 18,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
            padding: EdgeInsets.only(
              top: 650,
            ),
            child: ElevatedButton(
              child: Text(
                'Get free trial',
              ),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20.0),
                  primary: Colors.redAccent,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashBoardScreen()));
              },
            ),
          )
        ],
      ),
    ));
  }
}
