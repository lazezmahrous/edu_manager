// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherResponseModel _$TeacherResponseModelFromJson(
        Map<String, dynamic> json) =>
    TeacherResponseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      profUrl: json['profUrl'] as String,
      subject: json['subject'] as String,
      centers:
          (json['centers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TeacherResponseModelToJson(
        TeacherResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profUrl': instance.profUrl,
      'subject': instance.subject,
      'centers': instance.centers,
    };
