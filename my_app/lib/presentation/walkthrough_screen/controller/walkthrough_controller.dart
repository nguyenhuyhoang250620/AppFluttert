import '/core/app_export.dart';
import 'package:my_app/presentation/walkthrough_screen/models/walkthrough_model.dart';

class WalkthroughController extends GetxController {
  Rx<WalkthroughModel> walkthroughModelObj = WalkthroughModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
