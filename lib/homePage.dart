import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/onboard/data.dart';
import 'package:flutter_app/users/login.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                        onPressed: null,
                        child: Text('SKIPE', style: Theme.of(context).textTheme.headline5,)
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(io.image),
                ),
                Column(
                  children: <Widget>[
                    Text(io.title, style: Theme.of(context).textTheme.headline1,),
                    SizedBox(height: 20,),
                    Text(io.subtitle, style: Theme.of(context).textTheme.bodyText1,),
                    SizedBox(height: 40,),
                    index == (OnBoardingItems.loadOnBoardingItem().length - 1) ?
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Get Started', style:  Theme.of(context).textTheme.bodyText2,),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward_outlined, color: Colors.white,)
                        ],
                      ),
                    )
                        : Container()
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 10,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: OnBoardingItems.loadOnBoardingItem().length,
                      itemBuilder: (BuildContext context, int i){
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: index == i ? 40: 20,
                            color: index == 1 ? Colors.white70 : Colors.white30,
                          ),
                        );
                      },
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
