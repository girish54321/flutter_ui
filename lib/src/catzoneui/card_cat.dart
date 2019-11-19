import 'package:ecommerce/src/catzoneui/catpages/shark_page.dart';
import 'package:flutter/material.dart';

class CardCat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/shark.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('shark'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/lucky.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('lucky'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/buffy.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('buffy'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/prinkla.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('prinkle'),
                ),
              ),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/loyle.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('loyal'),
                ),
              ),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharkPage()
              ));
            },
            child: Card(
              child: ListTile(
                title: Image.asset('images/catzone/catProfile.png'),
                subtitle: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('profile'),
                ),
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}