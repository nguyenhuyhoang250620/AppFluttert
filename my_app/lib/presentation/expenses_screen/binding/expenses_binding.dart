import '../controller/expenses_controller.dart';
import 'package:get/get.dart';

class ExpensesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExpensesController());
  }
}
