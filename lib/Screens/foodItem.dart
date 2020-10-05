import 'package:awanahala/Screens/foodItemCategory.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  String selectedCanteen; // ID(key) selected canteen
  FoodItem(this.selectedCanteen);
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[400].withOpacity(0.9),
                        spreadRadius: 0,
                        blurRadius: 0.5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 130,
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black87,
                              size: 30.0,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(width: 20.0),
                          CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage("images/ucsc.jpg"),
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            padding: EdgeInsets.only(left: 20.0),
                            width: 180.0,
                            child: Text(
                              "Managment Canteen ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 36.0,
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          indicatorColor: Colors.white,
                          indicatorWeight: 3.0,
                          controller: _tabController,
                          isScrollable: true,
                          labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
                          tabs: [
                            Tab(
                              child: Text(
                                "Breakfirst",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Lunch",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Short Eats",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Juices",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Soft Drinks",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10.0),
                Container(
                  height: 485.0,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      FoodItemCategory("Breakfirst"),
                      FoodItemCategory("Lunch"),
                      FoodItemCategory("Short Eats"),
                      FoodItemCategory("juices"),
                      FoodItemCategory("Soft Drinks"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
