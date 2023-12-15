import 'package:base_app/core/models/shared/identifiable.dart';

abstract class ModelWithIdService<T extends Identifiable> {
  T? getById(String? id);
  bool idExists(String id);
}
