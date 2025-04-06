// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentRequestModel _$StudentRequestModelFromJson(Map<String, dynamic> json) =>
    StudentRequestModel(
      id: json['id'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      phoneNumber: json['phoneNumber'] as String,
      educationStage: json['educationStage'] as String,
      address: json['address'] as String,
      teachersSelected: (json['teachersSelected'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      followingCenters: (json['followingCenters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$StudentRequestModelToJson(
        StudentRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'educationStage': instance.educationStage,
      'address': instance.address,
      'teachersSelected': instance.teachersSelected,
      'followingCenters': instance.followingCenters,
    };
