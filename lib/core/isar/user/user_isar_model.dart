import 'package:isar/isar.dart';

part 'user_isar_model.g.dart';

@collection
class UserIsarModel {
  UserIsarModel({
    this.id,
    this.name,
    this.phone,
    this.jobType,
    this.email,
    this.password,
    this.groupId,
    this.groupDescription,
  });

  final Id localId = Isar.autoIncrement;
  final String? id;
  final String? name;
  final String? phone;
  final String? jobType;
  final String? email;
  final String? password;
  final int? groupId;
  final String? groupDescription;
}
