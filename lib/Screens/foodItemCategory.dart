import 'package:flutter/material.dart';

import 'addToCart.dart';

class FoodItemCategory extends StatefulWidget {
  String category;
  FoodItemCategory(this.category);
  @override
  _FoodItemCategoryState createState() => _FoodItemCategoryState();
}

class _FoodItemCategoryState extends State<FoodItemCategory> {
  String itemName;
  List<String> items = List(); // Dummy list for Items
  List<double> unitPrice = List(); // Dummy list for unit price of each items

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    items.add("Egg Bun"); // dummy data
    unitPrice.add(25.0); // dummy data
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, position) {
          return buildListItem(items[position], unitPrice[position], "images/art.jpg");
        },
      ),
    );
  }
 

  buildListItem(String item, double unitPrice, String imageURL) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      width: double.infinity,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.green[100].withOpacity(0.6),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 25.0),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage(imageURL),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      item, // **** ITEM NAME
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Rs. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          TextSpan(
                            text: unitPrice.toString(), // **** UNIT PRICE
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // ***** This should be replace with precentage Icon or percontage widget
                margin: EdgeInsets.only(right: 25.0),
                child: Icon(
                  Icons.av_timer,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AddToCart(item, unitPrice, imageURL),
            ),
          );
        },
      ),
    );
  }
}
