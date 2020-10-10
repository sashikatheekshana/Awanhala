import 'package:awanahala/Screens/foodItemCategory.dart';
import 'package:awanahala/models/Items.dart';
import 'package:awanahala/services/getItem_service.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {

  
  String selectedCanteen; // ID(key) selected canteen
  FoodItem(this.selectedCanteen);
  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }
  final HttpService httpService = HttpService();
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
                        offset: Offset(0, 0),
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
                          SizedBox(width: 15.0),
                          CircleAvatar(
                            radius: 37,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                  "images/ucsc.jpg"), // *** CANTEEN IMAGE
                            ),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            padding: EdgeInsets.only(left: 10.0),
                            width: 150.0,
                            child: Text(
                              "Managment Canteen ", // *** CANTEEN NAME
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.black54,
                            ),
                            splashColor: Colors.black87,
                            iconSize: 20.0,
                            onPressed: () {
                              // navigate to shopping cart
                            },
                          ),
                          SizedBox(width: 5.0),
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
                            // ****** Pre defined item category list
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
                      Container(
                        child: FutureBuilder(
                          future: httpService.getItems(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Item>> snapshot) {
                            if (snapshot.hasData) {
                              List<Item> items = snapshot.data;
                              return ListView(
                                children: items
                                    .map(
                                      (Item item) => ListTile(
                                        title: Text(item.name),
                                        subtitle: Text(item.id),
                                      ),
                                    )
                                    .toList(),
                              );
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          },
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
