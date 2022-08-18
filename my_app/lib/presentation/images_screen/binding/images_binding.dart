import '../controller/images_controller.dart';
import 'package:get/get.dart';

class ImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImagesController());
  }
}
