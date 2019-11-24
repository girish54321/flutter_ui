import 'package:ecommerce/src/fitnessappui/bannerBgCustomPath.dart';
import 'package:ecommerce/src/fitnessappui/home.dart';
import 'package:flutter/material.dart';

const TextStyle goalCountStyle =
    TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black);
const TextStyle goalUnitStyle = TextStyle(color: Colors.grey);

class Bannersection extends StatefulWidget {
  @override
  _BannersectionState createState() => _BannersectionState();
}

class _BannersectionState extends State<Bannersection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: BannerBgCustomPath(),
            child: Container(
              color: appTheme.primaryColor,
              height: 300,
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                elevation: 10.0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 22.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "TODAY'S GOAL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GoalCount("KCAL", "1,200","Calories"),
                          Spacer(),
                          GoalCount("M", "90", "Cardio")
                        ],
                      ),
                      SizedBox(height: 30.0,),
                      SizedBox(
                        width: double.infinity,
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0)
                            )
                          ),
                          color: Color(0xFFF5F5F7),
                          child: Text("START CHALLANGE", style:TextStyle(color: Color(0xFF30314A))),
                          
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class GoalCount extends StatelessWidget {
  final String unit, total, unitName;
  GoalCount(this.unit, this.total, this.unitName);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              total,
              style:goalCountStyle
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 10.0),
              child: Text(unit,style:goalUnitStyle),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(unitName, style:goalUnitStyle),
            )
          ],
        )
      ],
    );
  }
}
