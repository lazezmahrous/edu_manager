// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentResponseModel _$StudentResponseModelFromJson(
        Map<String, dynamic> json) =>
    StudentResponseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      educationStage: json['educationStage'] as String,
      address: json['address'] as String,
      teachersSelected: (json['teachersSelected'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$StudentResponseModelToJson(
        StudentResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'educationStage': instance.educationStage,
      'address': instance.address,
      'teachersSelected': instance.teachersSelected,
    };
