import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_request_model.g.dart';

@JsonSerializable()
class InviteRequestModel {
  final String sendFrom;
  final String sendTo;
  final String title;
  final String discription;
  final bool isAccepted;

  InviteRequestModel({
    required this.sendFrom,
    required this.sendTo,
    required this.title,
    required this.discription,
    required this.isAccepted,
  });

  Map<String, dynamic> toJson() => _$InviteRequestModelToJson(this);

  static InviteRequestModel fromJson(Map<String, dynamic> json) =>
      _$InviteRequestModelFromJson(json);
}
