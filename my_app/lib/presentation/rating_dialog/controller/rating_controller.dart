import '/core/app_export.dart';
import 'package:my_app/presentation/rating_dialog/models/rating_model.dart';

class RatingController extends GetxController {
  Rx<RatingModel> ratingModelObj = RatingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
