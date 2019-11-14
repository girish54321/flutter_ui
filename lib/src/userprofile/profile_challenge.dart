import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  // final Color green = Color(0xFF1E8161);
  final String url = 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/09/04/15/lionel-messi-0.jpg?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){},
        ),

        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 16),
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90),
                bottomRight: Radius.circular(90),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
            ),

            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Column(
                        children: <Widget>[
                          Text("Familiar",
                          style: TextStyle(color: Colors.white, fontSize:16)),

                          Text("12", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),

                    Container(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset('images/profile.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        children: <Widget>[
                          Text("Following", style: TextStyle(color: Colors.white)),
                          Text("18", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 19),
                  child: Text("ID: 123654", style:TextStyle(color: Colors.white)),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 32),
                  child: Text("Ganesh oli", style:TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.group_add, color:Colors.white),
                          Text("Friends", style:TextStyle(color: Colors.white))
                        ],
                      ),

                       Column(
                        children: <Widget>[
                          Icon(Icons.group, color:Colors.white),
                          Text("Groups", style:TextStyle(color: Colors.white))
                        ],
                      ),

                       Column(
                        children: <Widget>[
                          Icon(Icons.videocam, color:Colors.white),
                          Text("Videos", style:TextStyle(color: Colors.white))
                        ],
                      ),

                       Column(
                        children: <Widget>[
                          Icon(Icons.favorite, color:Colors.white),
                          Text("Likes", style:TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height/3,
            padding: EdgeInsets.all(42),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.table_chart, color: Colors.grey),
                        Text("Leaders", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.show_chart, color: Colors.grey),
                        Text("Level up", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Icon(Icons.card_giftcard, color: Colors.grey),
                        Text("Leaders", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],

                ),

                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.code,color:Colors.grey),
                    Text("QR Code")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.blur_circular,color:Colors.grey),
                    Text("Daily bonus")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.visibility,color:Colors.grey),
                    Text("Visitors")
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      
    );
  }
}