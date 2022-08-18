import '../controller/blog_post_controller.dart';
import 'package:get/get.dart';

class BlogPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogPostController());
  }
}
