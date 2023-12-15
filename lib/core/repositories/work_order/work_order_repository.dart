import 'package:coleta_solo/core/models/collection/work_order_model.dart';
import 'package:coleta_solo/core/utils/api_utils.dart';

abstract class WorkOrderRepository {
  Future<ApiResponse<WorkOrderModel?>> loadById(String workOrderId);

  Future<ApiResponse<List<WorkOrderModel>?>> load();
}
