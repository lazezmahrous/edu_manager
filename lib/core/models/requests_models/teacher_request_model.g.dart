// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherRequestModel _$TeacherRequestModelFromJson(Map<String, dynamic> json) =>
    TeacherRequestModel(
      id: json['id'] as String,
      name: json['name'] as String,
      profUrl: json['profUrl'] as String,
      subject: json['subject'] as String,
      password: json['password'] as String,
      phoneNumber: json['phoneNumber'] as String,
      centers:
          (json['centers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TeacherRequestModelToJson(
        TeacherRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profUrl': instance.profUrl,
      'subject': instance.subject,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'centers': instance.centers,
    };
