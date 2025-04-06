import 'package:json_annotation/json_annotation.dart';

part 'teacher_request_model.g.dart';

@JsonSerializable()
class TeacherRequestModel {
  final String id;
  final String name;
  final String profUrl;
  final String subject;
  final String password;
  final String phoneNumber;
  final List<String> centers;
  TeacherRequestModel({
    required this.id,
    required this.name,
    required this.profUrl,
    required this.subject,
    required this.password,
    required this.phoneNumber,
    required this.centers,
  });

  Map<String , dynamic> toJson() => _$TeacherRequestModelToJson(this);
}
