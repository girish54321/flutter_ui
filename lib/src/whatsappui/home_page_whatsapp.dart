import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.camera),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(text: 'CALLS'),
              ],
            ),
            title: Text('WhatsApp'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.message),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              // Icon(Icons.directions_car),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 16),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Ganesh", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Ganesh", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Dipak", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Bishal", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Nabin", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Rajesh", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 18,),
                         Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset('images/profile.jpg'),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text("Ganesh", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                            SizedBox(width: 180,),
                            Text("11:30 am", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
