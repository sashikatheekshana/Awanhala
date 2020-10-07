import 'package:flutter/material.dart';
import '../data/selectedFood.dart';
import 'package:awanahala/shared/sizeConfig.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<SelectedFood> selectedFoodList = [
    SelectedFood('Fish Bun', 'images/foods/fishBun.jpg', 2, 10, 20.0, 40.0),
    SelectedFood('Bread', 'images/foods/bread.jpg', 1, 25, 50.0, 50.0),
    // SelectedFood(
    //     'Chicken Roll', 'images/foods/chickenRoll.jpg', 1, 24, 15.0, 15.0),
    // SelectedFood('Hot Dog', 'images/foods/hotDog.jpg', 2, 45, 30.0, 60.0),
    // SelectedFood('Wade', 'images/foods/wade.jpg', 4, 5, 10.0, 40.0),
    // SelectedFood('Plain Tea', 'images/foods/plainTea.jpg', 2, 12, 5.0, 10.0),
    // SelectedFood('Coffie', 'images/foods/coffie.jpg', 2, 2, 15.0, 30.0),
  ];
  double subTotal = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          backgroundColor: Colors.red[400],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: selectedFoodList.length,
                  itemBuilder: (context, index) => buildFoodList(context, index),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                ),
              ),
            ),
            Container(
              color: Colors.white70,
              height: blockHeight * 25,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: blockWidth * 10, right: blockWidth * 9, top: blockHeight * 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sub Total",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          "120.0",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: blockWidth * 10, right: blockWidth * 10, top: blockHeight * 4),
                      child: MaterialButton(
                        height: blockHeight * 8.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Place the order",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        color: Colors.green[300],
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildFoodList(BuildContext context, int index) {
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    final foodItem = selectedFoodList[index];
    return Container(
      margin: EdgeInsets.only(
          top: blockHeight * 1.5,
          bottom: blockHeight * 0.5,
          right: blockWidth * 3,
          left: blockWidth * 3),
      padding: EdgeInsets.symmetric(horizontal: blockWidth * 5, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.green[100].withOpacity(0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(foodItem.imageURL),
            ),
          ),
          Positioned(
            left: blockWidth * 24,
            top: blockHeight * 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  foodItem.name,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: blockHeight * 1),
                Container(
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Icon(Icons.remove),
                        onTap: () {
                          setState(() {
                            if (foodItem.qty > 1) {
                              foodItem.qty--;
                              foodItem.itemTotal = foodItem.qty * foodItem.unitPrice;
                              print(foodItem.itemTotal);
                            }
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: blockWidth * 3, right: blockWidth * 3),
                        child: Text(foodItem.qty.toString()),
                      ),
                      InkWell(
                        child: Icon(Icons.add),
                        onTap: () {
                          setState(() {
                            if (foodItem.available >= 1) {
                              foodItem.qty++;
                              foodItem.itemTotal = foodItem.qty * foodItem.unitPrice;
                              print(foodItem.itemTotal);
                            }
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: blockWidth,
            top: blockHeight * 2.5,
            child: Column(
              children: <Widget>[
                Text(
                  "Rs",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  foodItem.itemTotal.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
