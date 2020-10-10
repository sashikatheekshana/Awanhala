import 'package:json_annotation/json_annotation.dart';
part 'University.g.dart';

@JsonSerializable()
class University {
  String university;
  String id;

  University({
    this.id,
    this.university,
  });

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);

  Map<String, dynamic> toJson() => _$UniversityToJson(this);
}
