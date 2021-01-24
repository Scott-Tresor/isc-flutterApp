import 'package:flutter/material.dart';
import 'package:flutter_app/ui/FadeAnimation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/photo2.png'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.3),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(1.2,
                Text("Bienvenu sur l'application officiel de l'institut  superieur de commerce",
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, height: 1.2),
                )
              ),
              SizedBox(height: 30,),
              FadeAnimation(1.3,
                Text("Une application de gestion des etudiants",
                  style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 23, fontWeight: FontWeight.w500),
                )
              ),
              SizedBox(height: 130,),
              FadeAnimation(1.5,
                InkWell(
                onTap: (){},
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Demarer",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white,)
                    ],
                  ),
                ),
              ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
