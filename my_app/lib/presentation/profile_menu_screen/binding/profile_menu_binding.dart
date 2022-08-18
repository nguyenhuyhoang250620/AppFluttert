import '../controller/profile_menu_controller.dart';
import 'package:get/get.dart';

class ProfileMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileMenuController());
  }
}
