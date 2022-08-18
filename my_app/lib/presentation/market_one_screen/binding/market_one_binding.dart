import '../controller/market_one_controller.dart';
import 'package:get/get.dart';

class MarketOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarketOneController());
  }
}
