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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[

          ],
        ),
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

  Widget searchBox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Best place to \nFind awesome photos',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black54,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 20, right: 3, top: 3, bottom: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black38
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search student",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  height: double.infinity,
                  minWidth: 50,
                  elevation: 0,
                  color: Colors.amber,
                  child: Icon(Icons.search, color: Colors.white,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}