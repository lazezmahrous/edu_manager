import 'package:edu_manager/features/signup/data/models/invite_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_request_model.g.dart';

@JsonSerializable()
class StudentRequestModel {
  final String uid;
  final String studentName;
  final String educationLevel;
  final String educationGrad;
  final String phoneNumber;
  final String password;
  final List<String> teachersFollowing;
  final List<String> centersFollowing;
  final List<InviteRequestModel> invitations;

  StudentRequestModel({
    required this.uid,
    required this.studentName,
    required this.educationLevel,
    required this.educationGrad,
    required this.phoneNumber,
    required this.password,
    required this.teachersFollowing,
    required this.centersFollowing,
    required this.invitations,
  });

  Map<String, dynamic> toJson() => _$StudentRequestModelToJson(this);
}
