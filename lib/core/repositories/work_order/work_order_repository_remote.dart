import 'package:base_app/core/models/collection/work_order_model.dart';
import 'package:base_app/core/utils/api_utils.dart';
import 'package:base_app/core/repositories/work_order/work_order_repository.dart';

class WorkOrderRepositoryRemote implements WorkOrderRepository {
  @override
  Future<ApiResponse<List<WorkOrderModel>?>> load() {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<WorkOrderModel?>> loadById(String workOrderId) {
    // TODO: implement loadById
    throw UnimplementedError();
  }
}
