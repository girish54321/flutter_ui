import 'package:flutter/material.dart';

class AnimatedAppBarPage extends StatefulWidget implements
PreferredSizeWidget{

  final double _preferredHeight = 90.0;

  final String title;

  AnimatedAppBarPage(this.title);

  @override
  _AnimatedAppBarPageState createState() => _AnimatedAppBarPageState();

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}

class _AnimatedAppBarPageState extends State<AnimatedAppBarPage> with
SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation<double> _rotateAnimation;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 180));
    _rotateAnimation = CurvedAnimation(parent: _animationController, curve: Curves.linear);

    _animationController.repeat();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 20),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: ClipRect(
              child: Align(
                heightFactor: 0.18,
                alignment: Alignment.topCenter,
                child: RotationTransition(
                  turns: _rotateAnimation,
                  child: Image.asset('images/mars.png'),
                ),
              ),
            ),
          ),
          Text(
            widget.title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              letterSpacing:10.0
            )
          )
        ],
      ),
    );
  }
}