import '../controller/insights_controller.dart';
import 'package:get/get.dart';

class InsightsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsightsController());
  }
}
