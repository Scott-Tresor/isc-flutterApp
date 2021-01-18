import 'package:flutter/material.dart';
import 'package:flutter_app/homePage.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ISC LUBUMBASHI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          headline5: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.white60
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            color: Colors.white
          ),
          bodyText2: TextStyle(
            fontSize: 20.0,
            color: Colors.white
          )
        )
      ),
      home: HomePageScreen(),
    );
  }
}
