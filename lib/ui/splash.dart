import 'package:flutter/material.dart';
import 'package:flutter_app/ui/FadeAnimation.dart';
import 'package:flutter_app/users/login.dart';
import 'package:flutter_app/users/singup.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      )
  );
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(1.2, Text('Welcome', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.3, Text(
                    'Automatic identity verification wich enable you to verify your identity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                    ),
                  ))
                ],
              ),
              FadeAnimation(1.4, Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png')
                    )
                ),
              ),
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(1.6, MaterialButton(
                    animationDuration: Duration(milliseconds: 1000),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    minWidth: double.infinity,
                    height: 45,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  ),),
                  SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.only(top: 0, bottom: 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)
                          )
                      ),
                      child: FadeAnimation(1, MaterialButton(
                        animationDuration: Duration(milliseconds: 1000),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
                        },
                        minWidth: double.infinity,
                        height: 47.5,
                        color: Colors.yellow,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          'Inscription',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),)
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}