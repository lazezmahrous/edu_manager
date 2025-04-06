// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CenterRequestModel _$CenterRequestModelFromJson(Map<String, dynamic> json) =>
    CenterRequestModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      educationalStages: (json['educationalStages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CenterRequestModelToJson(CenterRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'educationalStages': instance.educationalStages,
    };
