import '../controller/content_controller.dart';
import 'package:get/get.dart';

class ContentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContentController());
  }
}
