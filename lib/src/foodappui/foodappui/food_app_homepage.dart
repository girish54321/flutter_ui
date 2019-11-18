import 'package:ecommerce/src/foodappui/foodappui/detailsPage.dart';
import 'package:ecommerce/src/instagramui/bottomnavigationbar/bottom_bar_page.dart';
import 'package:flutter/material.dart';

class FoodAppHomePage extends StatefulWidget {
  @override
  _FoodAppHomePageState createState() => _FoodAppHomePageState();
}

class _FoodAppHomePageState extends State<FoodAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA60EE7),
      bottomNavigationBar: BottomBarMenu(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),

                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),

                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),

          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: <Widget>[
                Text('Healthy',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
                ),

                SizedBox(width: 10.0,),

                Text('Food',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:25.0
                )
                )
              ],
            ),
          ),

          SizedBox(height: 40.0,),

          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                topRight: Radius.circular(75.0),
              )
            ),

            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25, right: 20),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildFoodItem('images/food/plate1.png','Salmon bowl','\$24.00'),
                        _buildFoodItem('images/food/plate2.png','Spring bowl','\$22.00'),
                        _buildFoodItem('images/food/plate6.png','Avacodo bowl','\$26.00'),
                        _buildFoodItem('images/food/plate5.png','Bery bowl','\$24.00'),

                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(heroTag: imgPath, foodName:foodName, foodPrice:price)
          ));
        },

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontSize:17.0,
                          fontWeight:FontWeight.bold
                        )
                      ),
                      Text(
                        price,
                        style:TextStyle(
                          fontSize:15.0,
                          color:Colors.grey
                        )
                      )
                    ],
                  )
                ],
              ),
            ),

            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}