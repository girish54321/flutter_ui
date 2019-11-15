import 'package:ecommerce/src/customappbar/custom_appbar.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatefulWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  List<String> tabs = ["Classic", "Sports", "Smart"];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      controller: tabController,
      indicatorColor: Theme.of(context).primaryColor,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 3.0),
        insets: EdgeInsets.symmetric(horizontal: 55.0),
      ),
      // labelColor: Theme.of(context).primaryColor,
      labelColor: Colors.white,

      labelStyle: TextStyle(fontSize: 22.0, color: Colors.black),
      // unselectedLabelColor: Theme.of(context).primaryColor.withOpacity(0.3),
      tabs: tabs
          .map((tabName) => Tab(
                text: tabName,
              ))
          .toList(),
    );

    final tabBarView = Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.only(top: 30),
        child: TabBarView(
          controller: tabController,
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orangeAccent,
            )
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(120)
                  ),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search your friends',
                ),
              ),
            ),
            tabBar,
            tabBarView
          ],
        ),
      ),
    );
  }
}
