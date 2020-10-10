


import 'dart:convert';

import 'package:awanahala/models/Items.dart';
import 'package:http/http.dart';

class HttpService{

  final String itemurl = 'http://3.223.72.19/api/item/';
  Future<List<Item>> getItems() async {
    Response res = await get(itemurl);
    print(res.body);
    


    if (res.statusCode == 200) {
      print("in");
      List<dynamic> body = jsonDecode(res.body);
      

      List<Item> items = body
          .map(
            (dynamic item) => Item.fromJson(item),
          )
          .toList();
        print(items[0]);
      return items;
    } else {
      throw "Can't get Items.";
    }
  }
}