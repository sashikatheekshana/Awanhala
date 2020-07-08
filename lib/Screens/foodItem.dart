import 'package:awanahala/shared/sizeConfig.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class FoodItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Food item"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: blockHeight * 5,
              color: Colors.white,
            ),
            onPressed: (null),
            //should add selection drop down
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
