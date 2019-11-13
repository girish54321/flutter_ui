import 'package:flutter/material.dart';

class RentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: 200,
        child: FlatButton(
          onPressed: (){},
          child: Text('Rent Car',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: "arial",
            letterSpacing:1.4
          ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(53))
          ),
          color: Colors.blue,
          padding: EdgeInsets.all(25),
        ),
      ),
      
    );
  }
}