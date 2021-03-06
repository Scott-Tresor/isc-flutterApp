import 'package:flutter/material.dart';
import 'package:flutter_app/ui/FadeAnimation.dart';
import 'package:flutter_app/ui/home.dart';

class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20,color: Colors.black,)
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          FadeAnimation(1.2,
                          Text('Inscription', style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),)),
                          SizedBox(height: 8,),
                          FadeAnimation(1.4,
                          Text('Crée votre compte', style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700]
                          ),))
                        ],
                      ),
                      FadeAnimation(1.5,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: <Widget>[
                            makeInput(label: "Nom et Post-nom"),
                            makeInput(label: "Email"),
                            makeInput(label: "Password", obscurText: true),
                            makeInput(label: "Password", obscurText: true)
                          ],
                        ),
                      ),),
                      FadeAnimation(1.6,
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
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
                            child: MaterialButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              minWidth: double.infinity,
                              height: 47.5,
                              color: Colors.greenAccent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text(
                                'Inscription',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                ),
                              ),
                            ),
                          )
                      ),),
                      FadeAnimation(1.7,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('J ai un compte? '),
                          Text('Se connecter', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                          ),)
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscurText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 3,),
        TextField(
          obscureText: obscurText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              )
          ),
        ),
        SizedBox(height: 10,),
      ],);
  }

}
