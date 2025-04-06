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

  static CenterResponseModel fromJson(Map<dynamic, dynamic> json) =>
      $_CenterResponseModel(json);
}
