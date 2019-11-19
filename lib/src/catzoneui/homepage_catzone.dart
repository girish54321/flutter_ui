import 'package:ecommerce/src/catzoneui/mycat_page.dart';
import 'package:flutter/material.dart';

class CatZoneHomePage extends StatefulWidget {
  @override
  _CatZoneHomePageState createState() => _CatZoneHomePageState();
}

class _CatZoneHomePageState extends State<CatZoneHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 370.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/catzone/catTom.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(22),
            child: Text(
              'PetZone is a new app that let you buy your favourite cat  online.we provide free delivery service when you purchase your favourite Cat pet. Join us Today',
              style: TextStyle(
                letterSpacing: 0.5,
                fontSize: 16.0,
                color: Colors.black,
                fontFamily: 'Domine'

              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: 217,
            height: 47,
            child: RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyCatPage()
                ));
              },
              color: Colors.pink[300],
              textColor: Colors.white,
              child: Text('GET STARTED'),
            ),
          ),
          SizedBox(height: 15.0,),
          Text('@ CopyRight2019')
        ],
      ),
    );
  }
}
