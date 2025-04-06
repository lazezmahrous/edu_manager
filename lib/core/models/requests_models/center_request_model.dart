import 'package:json_annotation/json_annotation.dart';

part 'center_request_model.g.dart';

@JsonSerializable()
class CenterRequestModel {
  final String id;
  final String name;
  final String address;
  final String phoneNumber;
  final String password;
  final List<String> educationalStages;
  CenterRequestModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.password,
    required this.educationalStages,
  });

  Map<String, dynamic> toJson() => _$CenterRequestModelToJson(this);
}
