import 'package:ecommerce/src/instagramui/bottomnavigationbar/bottom_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstagramProfilePage extends StatefulWidget {
  @override
  _InstagramProfilePageState createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage> {
  @override
  Widget build(BuildContext context) {
    final sizedboxh = SizedBox(
      height: 16.0,
    );

    final sizedboxw = SizedBox(
      width: 26.0,
    );

    final ttextstyle =
        TextStyle(color: Colors.black, fontWeight: FontWeight.w900);

    final fttextstyle =
        TextStyle(color: Colors.grey, fontWeight: FontWeight.w900);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(
          "oliganesh11",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.watch_later,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomBarMenu(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            sizedboxh,
            Row(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: ttextstyle,
                    ),
                    Text(
                      "Posts",
                      style: fttextstyle,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: ttextstyle,
                    ),
                    Text(
                      'Followers',
                      style: fttextstyle,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '10',
                      style: ttextstyle,
                    ),
                    Text(
                      'Following',
                      style: fttextstyle,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Ganesh@1",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: 90.0,
                ),
                SizedBox(
                  width: 230.0,
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 2.0,
                    textColor: Colors.black,
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Edit Profile",
                    ),
                  ),
                )
              ],
            ),
            sizedboxh,
            Text('Story Hilights',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
            Text('Keep your favourite stories on your profile',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0)),
            sizedboxh,
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                // SizedBox(width: 26,),
                sizedboxw,
                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                sizedboxw,

                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                sizedboxw,

                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                sizedboxw,

                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
                sizedboxw,

                SizedBox(
                  height: 40.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/profile.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Text("New"),
            sizedboxh,
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.bars),
                ),
                SizedBox(
                  width: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.mobileAlt),
                ),
                SizedBox(
                  width: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.user),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                  "Whene you share your photo and video, they'll \n                       appear on your profile",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 26),
            Center(
              child: Text("Share your first photo or video",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
            )
          ],
        ),
      ),
    );
  }
}
