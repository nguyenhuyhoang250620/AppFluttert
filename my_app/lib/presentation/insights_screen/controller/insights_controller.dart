import '/core/app_export.dart';
import 'package:my_app/presentation/insights_screen/models/insights_model.dart';

class InsightsController extends GetxController {
  Rx<InsightsModel> insightsModelObj = InsightsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
