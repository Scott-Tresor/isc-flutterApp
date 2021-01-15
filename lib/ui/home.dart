import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scott Tresor',
          style: TextStyle(
            color: Colors.deepOrangeAccent
          )
        ),
      ),
      body: Scaffold(

      ),
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 1000),
        curve: Curves.easeInOutCubic,
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Accueil'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.unsubscribe_rounded),
              title: Text('Inscription'),
              activeColor: Colors.deepOrangeAccent,
              inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.all_inbox_rounded),
              title: Text('Resultats'),
              activeColor: Colors.red,
              inactiveColor: Colors.black
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.black
          ),
        ],
      ),
    );
  }
}