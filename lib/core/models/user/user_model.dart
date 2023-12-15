import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.jobType,
    required this.email,
    required this.password,
    required this.groupId,
    required this.groupDescription,
  });

  final String id;
  final String name;
  final String phone;
  final String jobType;
  final String email;
  final String password;
  final int groupId;
  final String groupDescription;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
