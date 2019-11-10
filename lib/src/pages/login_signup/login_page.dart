import 'package:ecommerce/src/pages/login_signup/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
    } else {

    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  child: Image.asset('images/images1.png'),
                  clipper: BottomWaveClipper(),
                ),
                Positioned(
                  bottom: 70.0,
                  left: 80,
                  child: Text(
                    'Welcome To My App \n          Login',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0),
                  ),
                )
              ],
            ),
            SizedBox(height: 50.0,),

            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: 'Enter Email',
                labelText: 'Email',

              ),
            ),
            SizedBox(height: 30.0,),
            TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Enter Password',
                labelText: 'Password'
              ),
            ),
            SizedBox(height: 10,),

           Row(
             children: <Widget>[
               SizedBox(width: 20.0,),
               Checkbox(
             value: rememberMe,
             onChanged: _onRememberMeChanged,
           ),
           SizedBox(
             width: 20.0,
           ),

           Text('Remember me')
             ],
           ),

            SizedBox(height: 30.0,),
            RaisedButton(
              child: Text('SIGN IN', 
              style: TextStyle(color: Colors.white70,fontSize: 20),
              ),
              onPressed: (){},
              color: Colors.red,
            ),

            SizedBox(height: 20.0,),
            FlatButton(
              child: Text('SIGN UP', 
              style: TextStyle(color: Colors.redAccent,fontSize: 16),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
              },
            )

          ],
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Draw a straight line from current point to the bottom left corner.
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // Draw a straight line from current point to the top right corner.
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
