import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final widthsized = SizedBox(
    width: 16.0,
  );
  final storystyle = TextStyle(
    color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130.0,
      color: Colors.white,
      child: Column(
        // child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset('images/profile.jpg'),
                ),
              ),
              widthsized,
              SizedBox(
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset('images/profile.jpg'),
                ),
              ),
              widthsized,
              SizedBox(
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90.0),
                  child: Image.asset('images/profile.jpg'),
                ),
              ),
              widthsized,
              SizedBox(
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90.0),
                  child: Image.asset('images/profile.jpg'),
                ),
              ),
            ],
          ),
          SizedBox(width: 8,),

          Row(
            children: <Widget>[
              SizedBox(width: 6,),
              SizedBox(
                height: 30.0,
                child: Text('Your story',style: storystyle,),
              ),
              SizedBox(width: 46,),
              SizedBox(
                height: 30.0,
                child: Text('Ganesh',style: storystyle,),

              ),
              SizedBox(width: 46,),
              
              SizedBox(
                height: 30.0,
                child: Text('Dipak',style: storystyle,),

              ),
              SizedBox(width: 50,),
              SizedBox(
                height: 30.0,
                child: Text('Sudip',style: storystyle,),

              ),
            ],
          ),
        ],
        // ),
      ),
    );
  }
}
