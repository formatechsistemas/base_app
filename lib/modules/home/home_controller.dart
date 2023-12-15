import 'package:base_app/core/services/connectivity_service.dart';
import 'package:base_app/core/shared/screen_controller.dart';
import 'package:get/get.dart';

class HomeController extends ScreenController {
  final title = 'Home'.obs;

  bool get isOnline => Get.find<ConnectivityService>().isOffline.value;

  teste() {
    isLoading.value = true;
    title.value = 'New Home';
  }
}
