import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class FlutterSnakeBottomBar extends StatefulWidget {
  @override
  _FlutterSnakeBottomBarState createState() => _FlutterSnakeBottomBarState();
}

class _FlutterSnakeBottomBarState extends State<FlutterSnakeBottomBar> {
  int _selectedItemPosition = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snake BottomBar Example'),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      ),
      bottomNavigationBar: SnakeNavigationBar(
        style: SnakeBarStyle.pinned,
        backgroundColor: Colors.deepPurpleAccent,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('tickets')),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text('calendar')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.mic), title: Text('microphone')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('search'))
        ],
      ),
    );
  }
}