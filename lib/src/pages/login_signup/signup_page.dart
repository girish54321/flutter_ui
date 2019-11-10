import 'package:ecommerce/src/pages/login_signup/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  left: 140,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),

            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: 'Enter Name',
                labelText: 'Name',

              ),
            ),
            SizedBox(height: 28.0,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Enter Email',
                labelText: 'Email'
              ),
            ),

            SizedBox(height: 28.0,),
            TextField(
              keyboardType: TextInputType.visiblePassword,
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

            SizedBox(height: 28.0,),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintText: 'Enter c_password',
                labelText: 'c_password'
              ),
            ),

            SizedBox(height: 28.0,),
            RaisedButton(
              child: Text('SIGN IN', 
              style: TextStyle(color: Colors.white70,fontSize: 20),
              ),
              onPressed: (){},
              color: Colors.red,
            ),

            SizedBox(height: 8.0,),
            FlatButton(
              child: Text('Already a member ?', 
              style: TextStyle(color: Colors.redAccent,fontSize: 16),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
