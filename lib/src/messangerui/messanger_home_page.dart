import 'package:flutter/material.dart';

class MessangerHomePage extends StatelessWidget {
  List<String> profilePics = [
    "1.jpg",
    "2.jpg",
    "2.png",
    "3.jpg",
    "4.jpg",
    "7.jpg",
    "9.jpeg",
    "10.jpg",
    "11.png",
    "12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Chats",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.white,
                fontFamily: "Roboto")),
        leading: Container(
          padding: EdgeInsets.only(left: 16.0, top: 3.0, bottom: 3.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                "images/profile-pics/${profilePics[1]}",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera,
                  size: 22, color: Color.fromRGBO(195, 195, 195, 1)),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          CircleAvatar(
            backgroundColor: Color.fromRGBO(51, 51, 51, 1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit,
                  size: 22, color: Color.fromRGBO(195, 195, 195, 1)),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 16.0, top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(159, 159, 159, 1),
                  ),
                  hintText: "Serach",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(159, 159, 159, 1)
                  )
                ),
              ),
            ),
          ),

          Container(
            height: 85,
            margin: EdgeInsets.only(top: 8, bottom: 8, left: 16),
            child: ListView.builder(
              itemBuilder: (context, index){
                return Container(
                  width: 65,
                  margin: EdgeInsets.only(right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Color.fromRGBO(51, 51, 51, 1),
                              border: (index%2 == 0) ? Border.all(width: 0) : Border.all(color: Color.fromRGBO(0, 132, 255, 1),width: 3),
                            ),
                            child: ClipOval(
                              child: (index == 0) ?
                              IconButton(icon:Icon(Icons.add,size:30, color:Color.fromRGBO(195, 195, 195, 1)),onPressed: (){},) : 
                              Image.asset("images/profile-pics/${profilePics[index]}"),
                            ),
                          ),

                          Positioned(
                            child: Container(
                              height: (index != 0) ? 18 : 0,
                              width: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(9)),
                                color: Colors.green,
                                border: Border.all(color: Colors.black, width: 3)
                              ),

                            ),

                            bottom: 0,
                            right: 0,
                          )
                        ],
                      ),

                      Text("Your Story", style: TextStyle(
                        fontFamily:"Roboto",
                        fontSize:12,
                        fontWeight:FontWeight.w400,
                        color:(index%2==1) ? Colors.white : Color.fromRGBO(123, 123, 123, 1)
                      )),
                    ],
                  ),
                );
              },
              itemCount: 8,
              scrollDirection: Axis.horizontal,
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            height: 350,
            child: ListView.builder(
              itemBuilder: (context, index){
                return ListTile(
                  contentPadding: EdgeInsets.only(bottom: 10, right: 8),
                  leading: Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromRGBO(51, 51, 51, 1)
                        ),

                        child: ClipOval(
                          child: Image.asset("images/profile-pics/${profilePics[index]}"),
                        ),
                      ),

                      Positioned(
                        child: Container(
                          height: (index%2 == 0) ? 18 :0,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Colors.green,
                            border: Border.all(color: Colors.black,width: 3)
                          ),
                        ),
                        bottom: 0,
                        width: 0,
                      )
                    ],
                  ),

                  title: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text("Maaz Aftab", style:TextStyle(
                      fontFamily:"Roboto",
                      fontWeight:FontWeight.w500,
                      color:Colors.white
                    )),
                  ),

                  subtitle: Text("This is message of maaz aftab",style:TextStyle(
                    fontFamily:"Roboto",
                    fontWeight:FontWeight.w400,
                    color:Color.fromRGBO(123, 123, 123, 1)
                  )),
                  trailing: Icon(Icons.check_circle, size:20, color:(index%2==0) ? Color.fromRGBO(101, 107, 115, 1):Colors.transparent),
                );
              },
              itemCount: 7,
            ),
          )
        ],
      ),

      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        padding: EdgeInsets.only(left: 80,right: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: IconButton(
                    icon: Image.asset("images/profile-pics/mmessage.png", fit:BoxFit.fitHeight),
                    onPressed: (){},
                  ),
                ),

                Positioned(
                  child: Container(
                    height: 21,
                    width: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.5)),
                      color: Colors.redAccent,
                      border: Border.all(color: Colors.black, width: 3)
                    ),
                    child: Center(
                      child: Text("2", style: TextStyle(fontFamily: "Roboto", fontSize:12, color:Colors.white, fontWeight:FontWeight.w600)),
                    ),
                  ),
                  top: 2,
                  right: 0,
                )
              ],
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset("images/profile-pics/people.png",fit:BoxFit.fitHeight),
                onPressed: (){},
              ),
            ),

            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset("images/profile-pics/navigation.png",fit:BoxFit.fitHeight),
                onPressed: (){},
              ),
            ),

          ],
        ),
      ),
    );
  }
}
