import '/core/app_export.dart';
import 'package:my_app/presentation/congratulations_dialog/models/congratulations_model.dart';

class CongratulationsController extends GetxController {
  Rx<CongratulationsModel> congratulationsModelObj = CongratulationsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
