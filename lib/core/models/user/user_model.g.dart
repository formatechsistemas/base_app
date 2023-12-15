// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      jobType: json['jobType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      groupId: json['groupId'] as int,
      groupDescription: json['groupDescription'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'jobType': instance.jobType,
      'email': instance.email,
      'password': instance.password,
      'groupId': instance.groupId,
      'groupDescription': instance.groupDescription,
    };
