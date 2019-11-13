import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final sizedbox = SizedBox(
      height: 20,
    );
    return Scaffold(
      backgroundColor: Colors.pink,
      body: ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          // height: MediaQuery.of(context).size.height,
          height: 650,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    sizedbox,
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    sizedbox,
                    Text(
                      "Don't have account? Create your account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'User Name',
                      ),
                    ),
                    sizedbox,
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                      ),
                    ),
                    sizedbox,
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = true;
                            });
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        SizedBox(width: 90,),
                        Text(
                          "Forgot password?",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    sizedbox,
                   Center(
                     child: RaisedButton(
                       color: Colors.blue,
                       onPressed: (){},
                       child: Text('Login', style: TextStyle(color: Colors.white, fontSize:18, fontWeight:FontWeight.w500)),
                     ),
                   ),
                   sizedbox,
                   Center(
                     child: Text('Or Login with', style: TextStyle(fontWeight: FontWeight.w400),),
                   ),

                   sizedbox,
                    Row(
                      children: <Widget>[
                        SizedBox(width: 120.0,),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.facebook, size: 36, color: Colors.blueAccent,),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.twitter,size: 36, color: Colors.lightBlueAccent,),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.google,size: 36, color: Colors.redAccent,),
                          onPressed: (){},
                        ),
                      ],
                    ),


                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
