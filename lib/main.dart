import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Color(0xFF152238), canvasColor: Color(0xFFF5F5F5)),
      home: HomePage(),
    );
  }
}
