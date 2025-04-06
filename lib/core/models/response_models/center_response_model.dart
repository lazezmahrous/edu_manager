import 'package:json_annotation/json_annotation.dart';

part 'center_response_model.g.dart';

@JsonSerializable()
class CenterResponseModel {
  final String id;
  final String name;
  final String address;
  final List<String> educationalStages;
  CenterResponseModel({
    required this.id,
    required this.name,
    required this.address,
    required this.educationalStages,
  });

  static CenterResponseModel fromtoJson(Map<String, dynamic> json) =>
      _$CenterResponseModelFromJson(json);
}
