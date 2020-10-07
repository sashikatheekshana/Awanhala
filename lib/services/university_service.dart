import 'package:awanahala/models/University.dart';

abstract class UniversityService {
  Future<List<University>> getUniversities();
}
