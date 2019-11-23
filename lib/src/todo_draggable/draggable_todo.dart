import 'package:flutter/material.dart';

class DraggableToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 600,
            child: Image.asset('images/image.png', fit: BoxFit.contain),
          ),
          Positioned(
            child: Text("Todos",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            top: 40,
            left: 20,
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.85,
            minChildSize: 0.1,
            builder: (BuildContext context, ScrollController scrolController) {
              return Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("Task No $index",
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text(
                            "This is the detail of task No $index",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          trailing: Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                          ),
                          isThreeLine: true,
                        );
                      },
                      controller: scrolController,
                      itemCount: 20,
                    ),
                  ),
                  Positioned(
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.add, color:Colors.white),
                      backgroundColor: Colors.pinkAccent,
                    ),
                    top: -30,
                    right: 30,
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
