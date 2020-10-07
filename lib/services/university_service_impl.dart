import 'package:awanahala/models/University.dart';
import 'package:awanahala/services/university_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UniversityServiceImpl extends UniversityService {
  @override
  Future<List<University>> getUniversities() async {
    List<University> allUniversities = [];

    var url = 'http://3.223.72.19/api/data/universities';
    var response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      print("universities fetched successfully");
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      for (var uni in jsonResponse) {
        University university = University.fromJson(uni);
        print(uni);
        allUniversities.add(university);
      }
    } else {
      print("Error occured");
    }
    return allUniversities;
  }
}
