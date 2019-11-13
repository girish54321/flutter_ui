import 'package:flutter/material.dart';

class BottomBarMenu extends StatefulWidget {
  @override
  _BottomBarMenuState createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 12.0,
      backgroundColor: Colors.white38,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('search')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo),
          title: Text('photo')
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.verified_user),
        //   title: Text('Home')
        // ),
      ],

      
      
    );
  }
}