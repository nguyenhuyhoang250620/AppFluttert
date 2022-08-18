import '../controller/profile_posts_controller.dart';
import 'package:get/get.dart';

class ProfilePostsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePostsController());
  }
}
