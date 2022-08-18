import '/core/app_export.dart';
import 'package:my_app/presentation/compose_screen/models/compose_model.dart';

class ComposeController extends GetxController {
  Rx<ComposeModel> composeModelObj = ComposeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
