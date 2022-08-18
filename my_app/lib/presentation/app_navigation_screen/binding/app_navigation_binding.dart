import '../controller/app_navigation_controller.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}
