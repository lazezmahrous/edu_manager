// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentRequestModel _$StudentRequestModelFromJson(Map<String, dynamic> json) =>
    StudentRequestModel(
      uid: json['uid'] as String,
      studentName: json['studentName'] as String,
      educationLevel: json['educationLevel'] as String,
      educationGrad: json['educationGrad'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      teachersFollowing: (json['teachersFollowing'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      centersFollowing: (json['centersFollowing'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      invitations: (json['invitations'] as List<dynamic>)
          .map((e) => InviteRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentRequestModelToJson(
        StudentRequestModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'studentName': instance.studentName,
      'educationLevel': instance.educationLevel,
      'educationGrad': instance.educationGrad,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'teachersFollowing': instance.teachersFollowing,
      'centersFollowing': instance.centersFollowing,
      'invitations': instance.invitations,
    };
