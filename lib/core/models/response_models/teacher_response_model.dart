import 'package:json_annotation/json_annotation.dart';

part 'teacher_response_model.g.dart';

@JsonSerializable()
class TeacherResponseModel {
  final String id;
  final String name;
  final String profUrl;
  final String subject;
  final List<String> centers;
  TeacherResponseModel({
    required this.id,
    required this.name,
    required this.profUrl,
    required this.subject,
    required this.centers,
  });

  static TeacherResponseModel fromJson(Map<dynamic, dynamic> json) =>
      $_TeacherResponseModel(json);
}
