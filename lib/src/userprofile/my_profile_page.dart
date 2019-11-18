import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('MY CV APP'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 12.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/profile2.jpg'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Ganesh Oli',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'App Developer',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Hello, I am Ganesh Oli. I am a web plus mobile app developer. I am currently working on flutter and Laravel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Social Links',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.red,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Skills',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins')),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(
                          'https://subzdesigns.com/wp-content/uploads/2016/10/web-design-and-web-development.jpg'),
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Web Development',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'HTML,CSS,PHP',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),

                        Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(
                          'https://www.monitis.com/blog/wp-content/uploads/uploads/2013/11/mobilephoneapps.jpg'),
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Mobile Development',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          'HTML,CSS,PHP',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
