import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return ListView(
      children: <Widget>[
        _profilepic(),
        _divider(),
        _profiledetails(),
        _heading("Ongoing oders"),
        _myongoingoders(),
        _heading("Past Orders"),
        _mypastoders(),
      ],
    );
  }

  Widget _profilepic() {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: CircleAvatar(
        minRadius: 60,
      ),
    );
  }

  Widget _divider(){
    return Padding(
      padding: EdgeInsets.only(top:10),
      child: Container(
        height: 0.5,
        color: Colors.black,
      ),

    );
  }

  Widget _profiledetails() {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: <Widget>[
          Text(
            "Theekshana sashika",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 8),
          Text(
            "Theekshanasashika@gmail.com",
            style: TextStyle(fontSize: 16, color: Color(0xffaeaeae)),
          ),
          SizedBox(height: 20),
          // Expanded(child: _myoders())
        ],
      ),
    );
  }

  Widget _heading(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 6,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }

  Widget _myongoingoders() {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32, top: 16),
      child: Container(
        height: 300,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(
                    "http://s3.amazonaws.com/foodspotting-ec2/reviews/2310941/thumb_600.jpg?1346218231",
                    fit: BoxFit.cover,
                  ),
                  height: 180,
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width - 64,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Fish Rolls",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Price : 380"),
                    Text("Quqntity : 4"),
                  ],
                ),
                SizedBox(height: 16),
                Text("Expires in : 45 minutes")
              ],
            )),
      ),
    );
  }

  Widget _mypastoders() {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32, top: 16),
      child: Container(
        height: 300,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network(
                    "http://s3.amazonaws.com/foodspotting-ec2/reviews/2310941/thumb_600.jpg?1346218231",
                    fit: BoxFit.cover,
                  ),
                  height: 200,
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width - 64,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Fish Rolls",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Price : 380"),
                    Text("Quantity : 4"),
                  ],
                ),
                
              ],
            )),
      ),
    );
  }
}
