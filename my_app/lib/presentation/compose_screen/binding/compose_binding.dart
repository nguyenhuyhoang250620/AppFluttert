import '../controller/compose_controller.dart';
import 'package:get/get.dart';

class ComposeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComposeController());
  }
}
