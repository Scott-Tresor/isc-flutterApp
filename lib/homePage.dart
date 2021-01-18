import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/onboard/data.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: OnBoardingItems.loadOnBoardingItem().length,
        itemBuilder: (BuildContext context, int index) {
          OnBoardingItem io = OnBoardingItems.loadOnBoardingItem()[index];
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: io.color,
            padding: EdgeInsets.fromLTRB(20,0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(io.image),
                ), 
                Column(
                  children: <Widget>[
                    Text(io.title, style: Theme.of(context).textTheme.headline1,),
                    Text(io.subtitle, style: Theme.of(context).textTheme.headline5,)
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
