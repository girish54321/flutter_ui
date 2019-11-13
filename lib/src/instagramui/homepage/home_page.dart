import 'package:ecommerce/src/instagramui/bottomnavigationbar/bottom_bar_page.dart';
import 'package:ecommerce/src/instagramui/homepost/home_post.dart';
import 'package:ecommerce/src/instagramui/storypage/story_page.dart';
import 'package:flutter/material.dart';

class InstagramHomePage extends StatefulWidget {
  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white54,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.featured_video,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.screen_share,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      
      bottomNavigationBar: BottomBarMenu(),
     
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 8,),
            StoryPage(),
            HomePost(),
          ],
        ),
      ),
    );
  }
}
