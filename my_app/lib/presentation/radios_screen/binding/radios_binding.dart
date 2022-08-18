import '../controller/radios_controller.dart';
import 'package:get/get.dart';

class RadiosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RadiosController());
  }
}
