// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteRequestModel _$InviteRequestModelFromJson(Map<String, dynamic> json) =>
    InviteRequestModel(
      sendFrom: json['sendFrom'] as String,
      sendTo: json['sendTo'] as String,
      title: json['title'] as String,
      discription: json['discription'] as String,
      isAccepted: json['isAccepted'] as bool,
    );

Map<String, dynamic> _$InviteRequestModelToJson(InviteRequestModel instance) =>
    <String, dynamic>{
      'sendFrom': instance.sendFrom,
      'sendTo': instance.sendTo,
      'title': instance.title,
      'discription': instance.discription,
      'isAccepted': instance.isAccepted,
    };
