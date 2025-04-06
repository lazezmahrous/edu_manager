import 'package:json_annotation/json_annotation.dart';

part 'student_response_model.g.dart';

@JsonSerializable()

class StudentResponseModel {
  final String id;
  final String name;
  final String educationStage;
  final String address;
  final List<String> teachersSelected;
  StudentResponseModel({
    required this.id,
    required this.name,
    required this.educationStage,
    required this.address,
    required this.teachersSelected,
  });
  static StudentResponseModel fromJson(Map<dynamic, dynamic> json) =>
      $_StudentResponseModel(json);

}
