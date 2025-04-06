import 'package:json_annotation/json_annotation.dart';

part 'student_request_model.g.dart';

@JsonSerializable()
class StudentRequestModel {
  final String id;
  final String name;
  final String password;
  final String phoneNumber;
  final String educationStage;
  final String address;
  final List<String> teachersSelected;
  final List<String> followingCenters;
  StudentRequestModel({
    required this.id,
    required this.name,
    required this.password,
    required this.phoneNumber,
    required this.educationStage,
    required this.address,
    required this.teachersSelected,
    required this.followingCenters,
  });
  static StudentRequestModel fromJson(Map<dynamic, dynamic> json) =>
      $_StudentRequestModel(json);

}
