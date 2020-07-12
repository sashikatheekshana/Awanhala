import 'package:flutter/material.dart';
import 'package:awanahala/shared/sizeConfig.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  double unitPrice = 20.0;
  double totalPrice = 20.0;
  int itemCount = 1;
  int available = 11;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add to Cart"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: blockHeight * 33,
                    width: blockHeight * 33,
                    margin: EdgeInsets.only(
                        top: blockHeight * 7, bottom: blockHeight * 4.5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 7,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/foods/plainTea.jpg"),
                    ),
                  ),
                  SizedBox(height: blockHeight * 0.3),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: blockWidth * 10, right: blockWidth * 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Plain Tea",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Rs. ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    TextSpan(
                                      text: unitPrice.toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Rs. ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                TextSpan(
                                  text: '$totalPrice',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: blockHeight * 3,
                        left: blockWidth * 5,
                        right: blockWidth * 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: blockHeight * 0.5),
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (itemCount > 1) {
                                    itemCount = itemCount - 1;
                                    available++;
                                    totalPrice = unitPrice * itemCount;
                                  }
                                });
                              },
                              color: Colors.green[300],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 15,
                              ),
                              padding: EdgeInsets.all(blockHeight * 2.5),
                              shape: CircleBorder(),
                            ),
                          ),
                          // ItemCount(),
                          Container(
                            height: 70.0,
                            width: 70.0,
                            child: Center(
                              child: Text(
                                '$itemCount',
                                style: TextStyle(
                                  color: Colors.green[400],
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: blockHeight * 0.5),
                            child: MaterialButton(
                              onPressed: () {
                                if (available >= 1) {
                                  setState(() {
                                    itemCount = itemCount + 1;
                                    available--;
                                    totalPrice = unitPrice * itemCount;
                                  });
                                }
                              },
                              color: Colors.green[300],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 15,
                              ),
                              padding: EdgeInsets.all(blockHeight * 2.5),
                              shape: CircleBorder(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: blockHeight * 3),
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "$available",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "More available",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: blockHeight * 2),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: blockWidth * 15,
                          right: blockWidth * 15,
                          top: blockHeight * 1.5,
                          bottom: blockHeight * 1.5),
                      child: MaterialButton(
                        height: blockHeight * 8.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Add to cart",
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
                  SizedBox(height: blockHeight * 1.5),
                  Padding(
                    padding: EdgeInsets.only(
                        left: blockWidth * 8, right: blockWidth * 8),
                    child: Divider(
                      color: Colors.green[900],
                    ),
                  ),
                  SizedBox(height: blockHeight * 1.5),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: blockWidth * 13,
                        right: blockWidth * 13,
                        bottom: blockHeight * 4,
                      ),
                      child: Text(
                        "කන්නෙපා මල ජරාව. ලුනුත් නෑ, බොක හොද්ද වගේ මෙලෝ රහක් නෑ..",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
