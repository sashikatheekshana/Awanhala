import 'dart:ui';

import 'package:awanahala/models/University.dart';
import 'package:awanahala/service_locator/service_locator.dart';
import 'package:awanahala/services/university_service.dart';
import 'package:awanahala/shared/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'foodItem.dart';

class CanteenSelect extends StatefulWidget {
  @override
  _CanteenSelectState createState() => _CanteenSelectState();
}

class _CanteenSelectState extends State<CanteenSelect> {
  final UniversityService universityService = locator<UniversityService>();

  List<University> universities = [
    University(id: "0001", university: "University of Colombo"),
    University(id: "0001", university: "University of Moratuwa")
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Select the Canteen"),
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.red[400],
        ),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: universities.length,
            itemBuilder: (context, position) {
              return buildListItem(
                  universities[position].university, "images/ucsc.jpg");
            },
          ),
        ),
      ),
    );
  }

  buildListItem(String canteenName, String imageURL) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      width: double.infinity,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 25.0),
          decoration: BoxDecoration(
            color: Colors.green[100].withOpacity(0.6),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(imageURL),
              ),
              SizedBox(width: 20.0),
              Container(
                width: 1.0,
                height: 40.0,
                color: Colors.black,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                width: 180.0,
                child: Text(
                  canteenName,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodItem(canteenName),
            ),
          );
        },
      ),
    );
  }
}
