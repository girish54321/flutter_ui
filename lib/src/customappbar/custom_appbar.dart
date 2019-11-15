import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;

  const CustomAppBar({Key key, this.isHome = true}):super(key:key);

  @override
  Size get preferredSize => Size(null, 56);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: (){
          if(!isHome){
            Navigator.pop(context);
          }
        },
        icon: Icon(
          isHome ? LineIcons.bars:LineIcons.angle_left,
          color: Colors.black,
          size: 28,
        ),
      ),

      title: Text("Ganesh"),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: Icon(LineIcons.shopping_cart,color: Colors.black, size: 30,),
        )
      ],
    );
  }
}
