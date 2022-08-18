import '/core/app_export.dart';
import 'package:my_app/presentation/images_screen/models/images_model.dart';

class ImagesController extends GetxController {
  Rx<ImagesModel> imagesModelObj = ImagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
