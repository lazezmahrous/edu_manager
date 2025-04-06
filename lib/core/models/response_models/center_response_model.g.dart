// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CenterResponseModel _$CenterResponseModelFromJson(Map<String, dynamic> json) =>
    CenterResponseModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      educationalStages: (json['educationalStages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CenterResponseModelToJson(
        CenterResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'educationalStages': instance.educationalStages,
    };
