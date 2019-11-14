import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsAppUi2 extends StatefulWidget {
  @override
  _WhatsAppUi2State createState() => _WhatsAppUi2State();
}

class _WhatsAppUi2State extends State<WhatsAppUi2> {
  final Color green = Color(0xFF36C88A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.25,
                color: green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Chat Activity",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          // child: Icon(FontAwesomeIcons.plusCircle, color: Colors.white,),
                          child: IconButton(
                            icon: Icon(
                              FontAwesomeIcons.plusCircle,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width/1.25,
                      child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: 'Search your friends',
                      ),
                    ),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
