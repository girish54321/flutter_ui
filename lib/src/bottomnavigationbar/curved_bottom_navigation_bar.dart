import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedBottonNavigationBar extends StatefulWidget {
  @override
  _CurvedBottonNavigationBarState createState() =>
      _CurvedBottonNavigationBarState();
}

class _CurvedBottonNavigationBarState extends State<CurvedBottonNavigationBar> {
  int _page = 0;
  GlobalKey _bottonNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottonNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(microseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                _page.toString(),
                textScaleFactor: 10.0,
              ),
              RaisedButton(
                child: Text('Go to Page of index 1'),
                onPressed: () {
                  final _CurvedBottonNavigationBarState navBarState =
                      _bottonNavigationKey.currentState;
                  navBarState.setPage(1);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void setPage(int i) {}
}
