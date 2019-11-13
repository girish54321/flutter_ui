import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePost extends StatefulWidget {
  @override
  _HomePostState createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              // SizedBox(width: 14,),
              SizedBox(
              height: 50.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Image.asset('images/profile.jpg'),
              ),
            ),
            SizedBox(width: 10,),
            Text('Ganesh oli', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
            SizedBox(width:160 ,),
            IconButton(
              icon: Icon(Icons.border_horizontal),
              onPressed: (){},
            )
            ],
          ),
          SizedBox(height: 10,),
          Image.asset('images/person.jpg'),
          // Text('Comment')
          Row(
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.comment),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.share),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.hearing),
              ),
              SizedBox(width: 184,),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.collections),
              )
            ],
          ),
          Text("60 likes", style: TextStyle(fontWeight: FontWeight.bold),),
          TextField(
            decoration: InputDecoration(
              labelText: 'Comment'
            ),

          ),
        ],
        
      ),
    );
  }
}